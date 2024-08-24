import { useEffect, useRef } from "react";
import { Tabs, usePathname } from "expo-router";
import { MaterialIcons, Fontisto, AntDesign } from "@expo/vector-icons";
import { Platform } from "react-native";
import { useSetAtom } from "jotai/react";
import * as Notification from "expo-notifications";
import * as TaskManager from "expo-task-manager";
import notifee, { EventType } from "@notifee/react-native";

import { logoutAlertAtom } from "../../../store/auth";
import useTokenChanged from "../../../hooks/use-token-changed";
import {
  createNotificationChannels,
  NotificationResponse,
} from "@/lib/notification";
import useNotificationHandler, {
  onNewNotice,
} from "@/hooks/use-notification-handler";
import PaperTabs from "@/components/PaperTabs";

export const unstable_settings = {
  initialRouteName: "notices",
};

export default function RootLayout() {
  const pathname = usePathname();
  const prevPath = useRef<string>();
  const setOpenLogoutAlertDialog = useSetAtom(logoutAlertAtom);

  useEffect(() => {
    createNotificationChannels();
  }, []);

  useTokenChanged();

  useEffect(() => {
    if (prevPath.current === "/profile") {
      setOpenLogoutAlertDialog(false);
    }
    prevPath.current = pathname;
  }, [pathname]);

  useNotificationHandler();

  return (
    <PaperTabs
      initialRouteName="notices"
      screenOptions={{
        tabBarStyle: {
          marginHorizontal: "auto",
          marginBottom: 16,
          borderRadius: Platform.select({ ios: 20, android: 32 }),
          height: 60,
          elevation: 2,
          width: "50%",
          position: "absolute",
        },
        headerShown: false,
      }}
    >
      <PaperTabs.Screen
        name="notices"
        options={{
          // href: "/notices",
          tabBarIcon: (props) => (
            <MaterialIcons name="notifications" color={props.color} size={24} />
          ),
          // tabBarStyle: tabStyles.tabBar,
          headerTitle: "Notices",
          tabBarLabel: "Notices",
          // headerShown: false,
        }}
      />
      <PaperTabs.Screen
        name="class-tests"
        options={{
          // href: "/class-tests",
          tabBarIcon: (props) => (
            <Fontisto name="test-tube" color={props.color} size={24} />
          ),
          // tabBarStyle: tabStyles.tabBar,
          headerTitle: "Class Tests",
          tabBarLabel: "Class Tests",
        }}
      />
      <Tabs.Screen
        name="profile"
        options={{
          // href: "/profile",
          tabBarIcon: (props) => (
            <AntDesign name="user" color={props.color} size={24} />
          ),
          // tabBarStyle: tabStyles.tabBar,
          headerTitle: "Profile",
          tabBarLabel: "Profile",
        }}
      />
    </PaperTabs>
  );
}
