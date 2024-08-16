import { useEffect, useMemo } from "react";
import { loadable } from "jotai/utils";
import { atom } from "jotai";
import { Provider, useAtomValue } from "jotai/react";
import { Stack, SplashScreen } from "expo-router";
import { useColorScheme } from "react-native";
import NetInfo from "@react-native-community/netinfo";
// import { QueryClientProvider, onlineManager } from "@tanstack/react-query";
import { MD3DarkTheme, MD3LightTheme, PaperProvider } from "react-native-paper";
import { useMaterial3Theme } from "@pchmn/expo-material3-theme";

// import RefetchOnFocus from "../components/RefetchOnFocus";
// import { queryClient } from "../lib/utils";
// import HydrateAtoms from "../components/HydrateAtoms";
import { loadableSession } from "../store/auth";
import { createNotificationChannels } from "../lib/notification";
import { ApolloProvider } from "@apollo/client";
import client from "@/lib/apollo";

// onlineManager.setEventListener((setOnline) => {
//   return NetInfo.addEventListener((state) => {
//     setOnline(!!state.isConnected);
//   });
// });

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
        </PaperProvider>
        {/* </HydrateAtoms> */}
      </Provider>
    </ApolloProvider>
  );
}
