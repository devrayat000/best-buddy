import { useQueryClient } from "@tanstack/react-query";
import { useEffect, useRef } from "react";
import * as Notifications from "expo-notifications";

import {
  openAppOnNotificationRespond,
  scheduleClassTestNotification,
} from "../lib/notification";

export default function useNotificationHandler() {
  const client = useQueryClient();

  const receiveListener = useRef<Notifications.Subscription>();
  const responseListener = useRef<Notifications.Subscription>();

  useEffect(() => {
    receiveListener.current = Notifications.addNotificationReceivedListener(
      async (notification) => {
        const trigger = notification.request.trigger;
        if (trigger.type === "push" && "channelId" in trigger) {
          if (trigger.channelId === "notice-added") {
            await client.invalidateQueries({ queryKey: ["notices"] });
          }
          if (trigger.channelId === "class-test-added") {
            await client.invalidateQueries({ queryKey: ["class-tests"] });
            await scheduleClassTestNotification(notification.request.content);
          }
        }
      }
    );

    responseListener.current =
      Notifications.addNotificationResponseReceivedListener(
        openAppOnNotificationRespond
      );

    return () => {
      Notifications.removeNotificationSubscription(responseListener.current);
      Notifications.removeNotificationSubscription(receiveListener.current);
    };
  }, []);
}
