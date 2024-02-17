import { SafeAreaView, VStack, Button, ButtonText } from "@gluestack-ui/themed";
import { Stack, useLocalSearchParams } from "expo-router";
import { useAtom, useSetAtom } from "jotai";

import { initialAtom, sessionAtom } from "../../store/auth";
import { registerForPushNotificationsAsync } from "../../lib/notification";
import { atomWithMutation } from "jotai-tanstack-query";
import { updateUser } from "../../services/user";

type Params = {
  jwt: string;
  id: string;
  username: string;
};

const updateUserAtom = atomWithMutation((get) => ({
  mutationKey: ["update_user"],
  mutationFn: updateUser,
}));

export default function GrantAccessScreen() {
  const [, setInitial] = useAtom(initialAtom);
  const setSession = useSetAtom(sessionAtom);
  const params = useLocalSearchParams<Params>();
  const [{ mutateAsync: updateUserAsync }] = useAtom(updateUserAtom);

  async function grantAccess() {
    const token = await registerForPushNotificationsAsync();
    await setInitial(false);
    await updateUserAsync({ id: params.id, expoToken: token });
    await setSession({
      jwt: params.jwt,
      user: {
        id: +params.id,
        username: params.username,
        email: `${params.username}@me.buet.ac.bd`,
        expoToken: token,
      },
    });
  }

  return (
    <SafeAreaView flex={1}>
      <Stack.Screen options={{ headerShown: false }} />
      <VStack flex={1} justifyContent="flex-end">
        <Button borderRadius="$full" w="$full" onPress={grantAccess}>
          <ButtonText>Get Started</ButtonText>
        </Button>
      </VStack>
    </SafeAreaView>
  );
}
