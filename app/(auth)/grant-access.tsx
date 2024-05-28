import { Stack, useLocalSearchParams } from "expo-router";
import { useAtom, useSetAtom } from "jotai";
import { atomWithMutation } from "jotai-tanstack-query";

import { initialAtom, sessionAtom } from "../../store/auth";
import { registerForPushNotificationsAsync } from "../../lib/notification";
import { AuthUpdateParams, updateUser } from "../../services/user";
import { User } from "@/lib/types";
import { SafeAreaView } from "react-native-safe-area-context";
import { StyleSheet, View } from "react-native";
import { Button } from "react-native-paper";

type Params = {
  jwt: string;
  id: string;
  username: string;
};

const updateUserAtom = atomWithMutation<
  User,
  Omit<AuthUpdateParams, "accessToken">,
  unknown,
  unknown
>((get) => ({
  mutationKey: ["update_user"],
  mutationFn: async (variables) => {
    const accessToken = (await get(sessionAtom))?.jwt;
    if (!accessToken) {
      throw new Error("No access token found");
    }

    return await updateUser({
      accessToken,
      ...variables,
    });
  },
}));

export default function GrantAccessScreen() {
  const [, setInitial] = useAtom(initialAtom);
  const setSession = useSetAtom(sessionAtom);
  const params = useLocalSearchParams<Params>();
  const [{ mutateAsync: updateUserAsync }] = useAtom(updateUserAtom);

  async function grantAccess() {
    const token = await registerForPushNotificationsAsync();
    await setInitial(false);
    await updateUserAsync({ id: params.id!, expoToken: token });
    await setSession({
      jwt: params.jwt!,
      user: {
        id: +params.id!,
        username: params.username!,
        email: `${params.username}@me.buet.ac.bd`,
        expoToken: token,
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
