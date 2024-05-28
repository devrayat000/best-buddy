import { useEffect } from "react";
import { loadable } from "jotai/utils";
import { atom } from "jotai";
import { Provider, useAtomValue } from "jotai/react";
import { Stack, SplashScreen } from "expo-router";
import { useColorScheme } from "react-native";
import NetInfo from "@react-native-community/netinfo";
import { QueryClientProvider, onlineManager } from "@tanstack/react-query";
import { PaperProvider } from "react-native-paper";

import RefetchOnFocus from "../components/RefetchOnFocus";
import { queryClient } from "../lib/utils";
import HydrateAtoms from "../components/HydrateAtoms";
import { loadableSession } from "../store/auth";
import { createNotificationChannels } from "../lib/notification";

onlineManager.setEventListener((setOnline) => {
  return NetInfo.addEventListener((state) => {
    setOnline(!!state.isConnected);
  });
});

export const unstable_settings = {
  initialRouteName: "notices",
};

SplashScreen.preventAutoHideAsync();
// AsyncStorage.removeItem("sexxion");

const notificationAtom = loadable(atom(() => createNotificationChannels()));

export default function RootLayout() {
  const colorScheme = useColorScheme();
  const session = useAtomValue(loadableSession);
  const notification = useAtomValue(notificationAtom);

  useEffect(() => {
    // if (session.state === "hasData" && notification.state === "hasData") {
    // Hide the splash screen after the fonts have loaded (or an error was returned) and the UI is ready.
    SplashScreen.hideAsync();
    // }
  }, []);

  return (
    <QueryClientProvider client={queryClient}>
      <Provider>
        <HydrateAtoms>
          <RefetchOnFocus />
          <PaperProvider settings={{}}>
            <Stack
              initialRouteName="(root)"
              screenOptions={{ headerShown: false }}
            >
              <Stack.Screen name="(root)" />
              <Stack.Screen name="(auth)" />
            </Stack>
          </PaperProvider>
        </HydrateAtoms>
      </Provider>
    </QueryClientProvider>
  );
}
