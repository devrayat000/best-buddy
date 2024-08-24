import { useEffect, useMemo } from "react";
import { loadable } from "jotai/utils";
import { atom } from "jotai";
import { Provider, useAtomValue } from "jotai/react";
import { Stack, SplashScreen } from "expo-router";
import { useColorScheme } from "react-native";
import { MD3DarkTheme, MD3LightTheme, PaperProvider } from "react-native-paper";
import { useMaterial3Theme } from "@pchmn/expo-material3-theme";
import * as TaskManager from "expo-task-manager";
import { ApolloProvider } from "@apollo/client";
import { GestureHandlerRootView } from "react-native-gesture-handler";
import notifee, {
  AndroidCategory,
  AndroidStyle,
  RepeatFrequency,
  TriggerType,
} from "@notifee/react-native";
import { subDays, set } from "date-fns";

import { loadableSession } from "../store/auth";
import {
  createNotificationChannels,
  NotificationResponse,
} from "../lib/notification";
import client from "@/lib/apollo";
import { onNewNotice } from "@/hooks/use-notification-handler";
import { BACKGROUND_NOTIFICATION_TASK } from "@/lib/constants";
import { getReminderTime, omitNull } from "@/lib/utils";

export const unstable_settings = {
  initialRouteName: "notices",
};

SplashScreen.preventAutoHideAsync();

const notificationAtom = loadable(atom(() => createNotificationChannels()));

// TODO: Configure background tasks for individual types
TaskManager.defineTask<NotificationResponse>(
  BACKGROUND_NOTIFICATION_TASK,
  async ({ data, error, executionInfo }) => {
    console.log("Received a notification in the background!");
    // Do something with the notification data
    const notification = data.notification;
    const content = notification.notification;

    const payload = JSON.parse(notification.data.body);

    if (!content) {
      return;
    }

    const channelId = content.channelId ?? notification.data.channelId;
    console.log(executionInfo.appState);

    if (
      // executionInfo.appState === "background" ||
      executionInfo.appState === "inactive"
    ) {
      switch (channelId) {
        case "notice-added":
          await notifee.displayNotification({
            id: omitNull(notification.messageId),
            title: omitNull(content.title),
            body: omitNull(content.body),
            data: payload,
            android: {
              channelId,
              color: omitNull(content.color ?? payload.color),
              pressAction: { id: "default" },
              sound: "default",
              style: {
                type: AndroidStyle.BIGTEXT,
                text: content.body!,
              },
              category: AndroidCategory.EVENT,
              showTimestamp: true,
            },
            ios: { categoryId: "notice" },
            remote: {
              messageId: notification.messageId!,
              senderId: payload.createdById,
            },
          });
          break;
        case "class-test-added":
          await notifee.displayNotification({
            id: omitNull(notification.messageId),
            title: omitNull(content.title),
            body: omitNull(content.body),
            data: payload,
            android: {
              channelId,
              color: omitNull(content.color ?? payload.color),
              pressAction: { id: "default" },
              sound: "default",
              style: {
                type: AndroidStyle.BIGTEXT,
                text: content.body!,
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
            ios: { categoryId: "notice" },
            remote: {
              messageId: notification.messageId!,
              senderId: payload.createdById,
            },
          });
          await notifee.createTriggerNotification(
            {
              id: omitNull(notification.messageId),
              title: "Class Test Reminder!!!",
              subtitle: omitNull(content.title),
              body: omitNull(content.body),
              data: payload,
              android: {
                channelId: "class-test-coming",
                color: omitNull(content.color ?? payload.color),
                pressAction: { id: "default" },
                sound: "default",
                style: {
                  type: AndroidStyle.BIGTEXT,
                  text: content.body!,
                },
                category: AndroidCategory.REMINDER,
                showTimestamp: true,
              },
              ios: { categoryId: "notice" },
              remote: {
                messageId: notification.messageId!,
                senderId: payload.createdById,
              },
            },
            {
              timestamp: getReminderTime(new Date(payload.datetime)).getTime(),
              alarmManager: { allowWhileIdle: false },
              type: TriggerType.TIMESTAMP,
              repeatFrequency: RepeatFrequency.NONE,
            }
          );
          break;
        default:
          break;
      }
    }
  }
);

export default function RootLayout() {
  const colorScheme = useColorScheme();
  const session = useAtomValue(loadableSession);
  const notification = useAtomValue(notificationAtom);
  const { theme } = useMaterial3Theme();

  const paperTheme = useMemo(
    () =>
      colorScheme === "dark"
        ? { ...MD3DarkTheme, colors: theme.dark }
        : { ...MD3LightTheme, colors: theme.light },
    [colorScheme, theme]
  );

  useEffect(() => {
    // if (session.state === "hasData" && notification.state === "hasData") {
    // Hide the splash screen after the fonts have loaded (or an error was returned) and the UI is ready.
    SplashScreen.hideAsync();
    // }
  }, []);

  return (
    <ApolloProvider client={client}>
      <Provider>
        {/* <HydrateAtoms> */}
        {/* <RefetchOnFocus /> */}
        <PaperProvider
          theme={paperTheme}
          settings={{ rippleEffectEnabled: true }}
        >
          <GestureHandlerRootView>
            <Stack
              initialRouteName="(root)"
              screenOptions={{
                headerShown: false,
                contentStyle: { backgroundColor: paperTheme.colors.background },
              }}
            >
              <Stack.Screen name="(root)" />
              <Stack.Screen name="(auth)" />
            </Stack>
          </GestureHandlerRootView>
        </PaperProvider>
        {/* </HydrateAtoms> */}
      </Provider>
    </ApolloProvider>
  );
}
