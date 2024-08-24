import { Stack, useLocalSearchParams, useRouter } from "expo-router";
import { useAtom, useSetAtom } from "jotai";

import {
  initialAtom,
  sessionAtom,
  tokenAtom,
  userAtom,
} from "../../store/auth";
import { registerForPushNotificationsAsync } from "../../lib/notification";
import { SafeAreaView } from "react-native-safe-area-context";
import { StyleSheet, View } from "react-native";
import { Button } from "react-native-paper";
import { useMutation } from "@apollo/client";
import { UPLOAD_EXPO_TOKEN } from "@/documents/auth";

type Params = {
  jwt: string;
  id: string;
  email: string;
};

export default function GrantAccessScreen() {
  const router = useRouter();
  const setInitial = useSetAtom(initialAtom);
  const setSession = useSetAtom(sessionAtom);
  const params = useLocalSearchParams<Params>();
  const [uploadExpoToken, { loading }] = useMutation(UPLOAD_EXPO_TOKEN);

  async function grantAccess() {
    const expoToken = await registerForPushNotificationsAsync();
    if (!expoToken) return;

    await setInitial(false);
    await uploadExpoToken({
      variables: {
        token: expoToken,
      },
      context: {
        headers: {
          Authorization: `Bearer ${params.jwt}`,
        },
      },
      async onCompleted({ uploadExpoToken }) {
        await setInitial(false);
        await setSession(async (prev) => {
          const prevUsers = (await prev)?.user;
          return {
            jwt: params.jwt,
            user: {
              ...prevUsers,
              id: params.id,
              email: params.email,
              expoToken: uploadExpoToken?.token ?? undefined,
            },
          };
        });
        router.replace("/");
      },
    });
  }

  return (
    <SafeAreaView style={styles.container}>
      <Stack.Screen options={{ headerShown: false }} />
      <View style={[styles.vstack, { justifyContent: "flex-end" }]}>
        <Button onPress={grantAccess}>Get Started</Button>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  center: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  vstack: {
    flex: 1,
    alignItems: "stretch",
  },
  hstack: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  header: {
    fontSize: 20,
    fontWeight: "bold",
  },
  input: {
    height: 40,
    margin: 12,
    borderWidth: 1,
  },
});
