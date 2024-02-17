import { useEffect } from "react";
import { Provider, useAtomValue } from "jotai/react";
import { Stack, SplashScreen } from "expo-router";
import { GluestackUIStyledProvider } from "@gluestack-ui/themed";
import { config } from "@gluestack-ui/config";
import {
  useFonts,
  Inter_400Regular,
  Inter_600SemiBold,
  Inter_700Bold,
} from "@expo-google-fonts/inter";
import { useColorScheme } from "react-native";
import NetInfo from "@react-native-community/netinfo";
import { QueryClientProvider, onlineManager } from "@tanstack/react-query";

import RefetchOnFocus from "../components/RefetchOnFocus";
import { queryClient } from "../lib/utils";
import HydrateAtoms from "../components/HydrateAtoms";
import { loadableSession } from "../store/auth";
import { createNotificationChannels } from "../lib/notification";
import { loadable } from "jotai/utils";
import { atom } from "jotai";

onlineManager.setEventListener((setOnline) => {
  return NetInfo.addEventListener((state) => {
    setOnline(!!state.isConnected);
  });
});

export const unstable_settings = {
  initialRouteName: "(root)/",
};

SplashScreen.preventAutoHideAsync();
// AsyncStorage.removeItem("sexxion");

const notificationAtom = loadable(atom(() => createNotificationChannels()));

export default function RootLayout() {
  const [fontsLoaded, fontError] = useFonts({
    Inter_400Regular,
    Inter_600SemiBold,
    Inter_700Bold,
  });
  const colorScheme = useColorScheme();
  const session = useAtomValue(loadableSession);
  const notification = useAtomValue(notificationAtom);

  useEffect(() => {
    if (
      (fontsLoaded || fontError) &&
      session.state === "hasData" &&
      notification.state === "hasData"
    ) {
      // Hide the splash screen after the fonts have loaded (or an error was returned) and the UI is ready.
      SplashScreen.hideAsync();
    }
  }, [fontsLoaded, fontError]);

  // Prevent rendering until the font has loaded or an error was returned
  if (
    (!fontsLoaded && !fontError) ||
    session.state === "loading" ||
    notification.state === "loading"
  ) {
    return null;
  }

  console.log(session);

  return (
    <QueryClientProvider client={queryClient}>
      <Provider>
        <HydrateAtoms>
          <RefetchOnFocus />
          <GluestackUIStyledProvider config={config} colorMode={colorScheme}>
            <Stack
              initialRouteName="(root)/"
              screenOptions={{ headerShown: false }}
            />
          </GluestackUIStyledProvider>
        </HydrateAtoms>
      </Provider>
    </QueryClientProvider>
  );
}
