import * as Notifications from "expo-notifications";
import * as Device from "expo-device";
import Constants from "expo-constants";
import { Platform } from "react-native";

export async function createNotificationChannels() {
  if (Platform.OS === "android") {
    const classTestGroup = await Notifications.setNotificationChannelGroupAsync(
      "class-test",
      {
        name: "Class Test",
      }
    );
    await Promise.all([
      Notifications.setNotificationChannelAsync("class-test-added", {
        name: "Upcoming Class Test",
        importance: Notifications.AndroidImportance.MAX,
        vibrationPattern: [0, 250, 250, 250],
        lightColor: "#FF231F7C",
        groupId: classTestGroup.id,
      }),
      Notifications.setNotificationChannelAsync("class-test-coming", {
        name: "Night Before Class Test",
        importance: Notifications.AndroidImportance.MAX,
        vibrationPattern: [0, 250, 250, 250],
        lightColor: "#FF231F7C",
        groupId: classTestGroup.id,
      }),
    ]);

    const noticeGroup = await Notifications.setNotificationChannelGroupAsync(
      "notice",
      {
        name: "Notice",
      }
    );
    await Promise.all([
      Notifications.setNotificationChannelAsync("notice-added", {
        name: "New Notice",
        importance: Notifications.AndroidImportance.MAX,
        vibrationPattern: [0, 250, 250, 250],
        lightColor: "#FF231F7C",
        groupId: noticeGroup.id,
      }),
    ]);
  }
}

export async function generateExpoPushToken(
  devicePushToken?: Notifications.DevicePushToken
) {
  const token = (
    await Notifications.getExpoPushTokenAsync({
      projectId: Constants.expoConfig.extra.eas.projectId,
      devicePushToken,
    })
  ).data;
  return token;
}

export async function unregisterForPushNotificationsAsync() {
  await Notifications.unregisterForNotificationsAsync();
}

export async function registerForPushNotificationsAsync() {
  let token: string;

  if (Device.isDevice) {
    const { status: existingStatus } =
      await Notifications.getPermissionsAsync();
    let finalStatus = existingStatus;
    if (existingStatus !== "granted") {
      const { status } = await Notifications.requestPermissionsAsync();
      finalStatus = status;
    }
    if (finalStatus !== "granted") {
      alert("Failed to get push token for push notification!");
      return;
    }
    // Learn more about projectId:
    // https://docs.expo.dev/push-notifications/push-notifications-setup/#configure-projectid
    token = await generateExpoPushToken();
    console.log(token);
  } else {
    alert("Must use physical device for Push Notifications");
  }

  return token;
}
