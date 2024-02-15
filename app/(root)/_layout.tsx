import { Redirect, Tabs } from "expo-router";
import { MaterialIcons, Fontisto, AntDesign } from "@expo/vector-icons";
import { Platform } from "react-native";
import { useAtomValue } from "jotai/react";
import { SafeAreaView } from "@gluestack-ui/themed";
import * as Notifications from "expo-notifications";

import { sessionAtom } from "../../store/auth";

Notifications.setNotificationHandler({
  handleNotification: async () => ({
    shouldShowAlert: true,
    shouldPlaySound: true,
    shouldSetBadge: true,
  }),
});

export default function RootLayout() {
  const session = useAtomValue(sessionAtom);

  if (!session) {
    return <Redirect href="(auth)/get-started" />;
  }

  return (
    <SafeAreaView flex={1}>
      <Tabs
        initialRouteName="index"
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
          name="index"
          options={{
            href: "/",
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
            href: "/class-tests",
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
            href: "/profile",
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
