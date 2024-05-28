import { useEffect, useRef } from "react";
import { Redirect, Tabs, usePathname } from "expo-router";
import { MaterialIcons, Fontisto, AntDesign } from "@expo/vector-icons";
import { Platform } from "react-native";
import { useAtomValue, useSetAtom } from "jotai/react";
// import * as Notifications from "expo-notifications";

import { logoutAlertAtom, sessionAtom } from "../../store/auth";
import useTokenChanged from "../../hooks/use-token-changed";
import { SafeAreaView } from "react-native-safe-area-context";
// import useNotificationHandler from "../../hooks/use-notification-handler";

// Notifications.setNotificationHandler({
//   handleNotification: async () => ({
//     shouldShowAlert: true,
//     shouldPlaySound: true,
//     shouldSetBadge: true,
//   }),
// });

export const unstable_settings = {
  initialRouteName: "notices",
};

export default function RootLayout() {
  const session = useAtomValue(sessionAtom);
  const pathname = usePathname();
  const prevPath = useRef<string>();
  const setOpenLogoutAlertDialog = useSetAtom(logoutAlertAtom);

  useTokenChanged();

  useEffect(() => {
    if (prevPath.current === "/profile") {
      setOpenLogoutAlertDialog(false);
    }
    prevPath.current = pathname;
  }, [pathname]);

  // useNotificationHandler();

  if (true) {
    return <Redirect href="(auth)/get-started" />;
  }

  return (
    <SafeAreaView style={{ flex: 1 }}>
      <Tabs
        initialRouteName="notices"
        screenOptions={{
          tabBarStyle: {
            marginHorizontal: 20,
            marginBottom: 16,
            borderRadius: Platform.OS === "ios" ? 8 : 12,
            height: 56,
            elevation: 2,
            position: "absolute",
          },
          headerShown: false,
        }}
      >
        <Tabs.Screen
          name="notices"
          options={{
            // href: "/notices",
            tabBarIcon: (props) => (
              <MaterialIcons
                name="notifications"
                color={props.color}
                size={props.size}
              />
            ),
            // tabBarStyle: tabStyles.tabBar,
            headerTitle: "Notices",
            tabBarLabel: "Notices",
            // headerShown: false,
          }}
        />
        <Tabs.Screen
          name="class-tests"
          options={{
            // href: "/class-tests",
            tabBarIcon: (props) => (
              <Fontisto
                name="test-tube"
                color={props.color}
                size={props.size}
              />
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
              <AntDesign name="user" color={props.color} size={props.size} />
            ),
            // tabBarStyle: tabStyles.tabBar,
            headerTitle: "Profile",
            tabBarLabel: "Profile",
          }}
        />
      </Tabs>
    </SafeAreaView>
  );
}
