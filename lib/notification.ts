import * as Notifications from "expo-notifications";
import * as Device from "expo-device";
import Constants from "expo-constants";
import { Platform } from "react-native";
import { router } from "expo-router";
import dayjs from "dayjs";
import notifee, {
  AndroidImportance,
  TriggerType,
  RepeatFrequency,
  Notification,
  AuthorizationStatus,
  AndroidChannelGroup,
  AndroidChannel,
} from "@notifee/react-native";

export async function createNotificationChannels() {
  if (Platform.OS === "android") {
    const channelGroups: AndroidChannelGroup[] = [];
    if (!(await notifee.getChannelGroup("class-test"))) {
      channelGroups.push({
        id: "class-test",
        name: "Class Test",
      });
    }
    if (!(await notifee.getChannelGroup("notice"))) {
      channelGroups.push({
        id: "notice",
        name: "Notice",
      });
    }
    await notifee.createChannelGroups(channelGroups);

    const channels: AndroidChannel[] = [];

    if (!(await notifee.isChannelCreated("class-test-added"))) {
      channels.push({
        id: "class-test-added",
        name: "Upcoming",
        importance: AndroidImportance.HIGH,
        // vibrationPattern: [0, 250, 250, 250],
        lightColor: "#FF231F7C",
        groupId: "class-test",
      });
    }
    if (!(await notifee.isChannelCreated("class-test-coming"))) {
      channels.push({
        id: "class-test-coming",
        name: "Night Before",
        importance: AndroidImportance.HIGH,
        // vibrationPattern: [0, 250, 250, 250],
        lightColor: "#FF231F7C",
        groupId: "class-test",
      });
    }
    if (!(await notifee.isChannelCreated("notice-added"))) {
      channels.push({
        id: "notice-added",
        name: "New Notice",
        importance: AndroidImportance.DEFAULT,
        // vibrationPattern: [0, 250, 250, 250],
        lightColor: "#FF231F7C",
        groupId: "notice",
      });
    }

    await notifee.createChannels(channels);
  }

  if (Platform.OS === "ios") {
    await notifee.setNotificationCategories([
      { id: "class-test" },
      { id: "notice" },
    ]);
  }
}

export async function generateExpoPushToken(
  devicePushToken?: Notifications.DevicePushToken
) {
  await Notifications.getDevicePushTokenAsync();
  const token = (
    await Notifications.getExpoPushTokenAsync({
      projectId: Constants.expoConfig?.extra?.eas.projectId,
      devicePushToken:
        devicePushToken || (await Notifications.getDevicePushTokenAsync()),
    })
  ).data;
  return token;
}

export async function unregisterForPushNotificationsAsync() {
  await Notifications.unregisterForNotificationsAsync();
}

export async function registerForPushNotificationsAsync() {
  let token: string;

  // if (Device.isDevice) {
  const { authorizationStatus: existingStatus } =
    await notifee.getNotificationSettings();
  let finalStatus = existingStatus;
  if (existingStatus !== AuthorizationStatus.NOT_DETERMINED) {
    const { authorizationStatus } = await notifee.requestPermission();
    finalStatus = authorizationStatus;
  }
  if (finalStatus !== AuthorizationStatus.AUTHORIZED) {
    alert("Failed to get push token for push notification!");
    return;
  }
  console.log("Getting push token for push notification");

  // Learn more about projectId:
  // https://docs.expo.dev/push-notifications/push-notifications-setup/#configure-projectid
  token = await generateExpoPushToken();
  console.log(token);
  // } else {
  //   alert("Must use physical device for Push Notifications");
  // }

  return token;
}

export const openAppOnNotificationRespond = async (
  response: Notifications.NotificationResponse
) => {
  const trigger = response.notification.request.trigger;
  console.log(
    "Received a notification in the foreground!",
    response.actionIdentifier,
    response.notification.request.identifier
  );

  if (
    trigger.type === "push" &&
    "channelId" in trigger &&
    (trigger.channelId === "notice-added" ||
      trigger.channelId === "class-test-added" ||
      trigger.channelId === "class-test-coming")
  ) {
    const content = response.notification.request.content;
    const id = content.data.id;
    router.push({
      pathname: `/(root)/(modals)/${
        trigger.channelId === "notice-added" ? "notices" : "class-tests"
      }/[id]`,
      params: {
        id,
      },
    });
  }
};

export async function scheduleClassTestNotification(content: Notification) {
  const dateTime = dayjs(content.data?.datetime as string)
    .subtract(1, "day")
    .minute(0)
    .second(0)
    .millisecond(0)
    .hour(-3)
    .toDate();

  return notifee.createTriggerNotification(
    {
      ...content,
      android: {
        channelId: "class-test-coming",
        ...content.android,
      },
      ios: {
        categoryId: "class-test",
        ...content.ios,
      },
    },
    {
      type: TriggerType.TIMESTAMP,
      timestamp: dateTime.getMilliseconds(),
      repeatFrequency: RepeatFrequency.NONE,
    }
  );
}

import type { FirebaseRemoteMessage } from "expo-notifications";

export type Post = {
  objectID: string;
  imageUrl: string;
  chapter: {
    name: string;
  };
  subject: {
    name: string;
  };
  book: {
    name: string;
    edition: string;
  };
};

export interface NotificationResponse {
  notification: FirebaseRemoteMessage;
}
