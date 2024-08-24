import { useEffect, useRef } from "react";
import * as Notifications from "expo-notifications";
import { TaskManagerTaskBodyExecutionInfo } from "expo-task-manager";
import notifee, {
  AndroidCategory,
  AndroidStyle,
  EventType,
  Notification,
} from "@notifee/react-native";
import * as Haptics from "expo-haptics";
import { useRouter, usePathname } from "expo-router";
import { useApolloClient } from "@apollo/client";

import { openAppOnNotificationRespond } from "../lib/notification";
import client from "@/lib/apollo";
import { CLASS_TESTS, NOTICES } from "@/documents/content";
import { omitNull } from "@/lib/utils";

export default function useNotificationHandler() {
  const client = useApolloClient();
  const pathname = usePathname();

  useEffect(() => {
    const received = Notifications.addNotificationReceivedListener(
      async (notification) => {
        const trigger = notification.request.trigger;
        const notificationContent = notification.request.content;

        if (trigger.type === "push" && "channelId" in trigger) {
          if (trigger.channelId === "notice-added") {
            client.cache.updateQuery({ query: NOTICES }, (data) => {
              const newData = notificationContent.data;
              const notices = data?.notices || [];
              if (!newData) {
                return data;
              }

              return {
                noticesCount: data?.noticesCount ?? 0,
                notices: [newData as any, ...notices],
              };
            });

            if (pathname.includes("notices")) {
              await Haptics.notificationAsync(
                Haptics.NotificationFeedbackType.Success
              );
            } else {
              await notifee.displayNotification({
                id: notification.request.identifier,
                title: notificationContent.title ?? undefined,
                body: notificationContent.body ?? undefined,
                data: notificationContent.data,
                android: {
                  channelId: trigger.channelId,
                  color: notificationContent.data.color ?? undefined,
                  pressAction: { id: "default" },
                  sound: "default",
                },
                remote: {
                  messageId: notification.request.identifier,
                  senderId: notificationContent.data.createdById,
                },
              });
            }
          }
          if (trigger.channelId === "class-test-added") {
            client.cache.updateQuery({ query: CLASS_TESTS }, (data) => {
              const newData = notificationContent.data;

              if (!newData) {
                return data;
              }
              const classTests = data?.classTests || [];
              return {
                classTestsCount: data?.classTestsCount ?? 0,
                classTests: [newData as any, ...classTests],
              };
            });

            if (pathname.includes("class-tests")) {
              await Haptics.notificationAsync(
                Haptics.NotificationFeedbackType.Success
              );
            } else {
              await notifee.displayNotification({
                id: notification.request.identifier,
                title: omitNull(notificationContent.title),
                body: omitNull(notificationContent.body),
                data: notificationContent.data,
                android: {
                  channelId: trigger.channelId,
                  color: omitNull(notificationContent.data.color),
                  pressAction: { id: "default" },
                  sound: "default",
                  style: {
                    type: AndroidStyle.BIGTEXT,
                    text: notificationContent.body!,
                  },
                  category: AndroidCategory.EVENT,
                  showTimestamp: true,
                  actions: [
                    {
                      pressAction: { id: "mute-reminder" },
                      title: "Mute Reminder",
                    },
                  ],
                },
                remote: {
                  messageId: notification.request.identifier,
                  senderId: notificationContent.data.createdById,
                },
              });
            }
          }
        }
      }
    );

    Notifications.getLastNotificationResponseAsync().then((response) => {
      if (response) {
        openAppOnNotificationRespond(response);
      }
    });

    const responded = Notifications.addNotificationResponseReceivedListener(
      openAppOnNotificationRespond
    );

    const unsubscribe = notifee.onForegroundEvent(async ({ type, detail }) => {
      console.log(type, detail);

      if (
        type === EventType.ACTION_PRESS &&
        detail.notification?.android?.channelId === "class-test-added" &&
        detail.pressAction?.id === "mute-reminder"
      ) {
        // await notifee.cancelNotification(detail.notification.id!);
        await notifee.cancelTriggerNotification(detail.notification.id!);
        console.log("Muted reminder");
      }
    });

    return () => {
      responded.remove();
      received.remove();
      unsubscribe();
    };
  }, [pathname]);
}

export async function onNewNotice(
  notification: Notification,
  appState?: TaskManagerTaskBodyExecutionInfo["appState"]
) {
  if (appState === "background" || appState === "inactive") {
    const id = await notifee.displayNotification(notification);
  }
}
