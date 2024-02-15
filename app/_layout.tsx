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

onlineManager.setEventListener((setOnline) => {
  return NetInfo.addEventListener((state) => {
    setOnline(!!state.isConnected);
  });
});

export const unstable_settings = {
  initialRouteName: "(root)/",
};

SplashScreen.preventAutoHideAsync();

export default function RootLayout() {
  const [fontsLoaded, fontError] = useFonts({
    Inter_400Regular,
    Inter_600SemiBold,
    Inter_700Bold,
  });
  const colorScheme = useColorScheme();
  const { state } = useAtomValue(loadableSession);

  useEffect(() => {
    if ((fontsLoaded || fontError) && state === "hasData") {
      // Hide the splash screen after the fonts have loaded (or an error was returned) and the UI is ready.
      SplashScreen.hideAsync();
    }
  }, [fontsLoaded, fontError]);

  // Prevent rendering until the font has loaded or an error was returned
  if ((!fontsLoaded && !fontError) || state === "loading") {
    return null;
  }

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
