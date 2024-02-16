import { SafeAreaView, VStack, Button, ButtonText } from "@gluestack-ui/themed";
import { Stack, useLocalSearchParams } from "expo-router";
import { useAtom } from "jotai";

import { initialAtom, sessionAtom } from "../../store/auth";
import { registerForPushNotificationsAsync } from "../../lib/notification";

type Params = {
  jwt: string;
  id: string;
  name: string;
  username: string;
};

export default function GetStartedScreen() {
  const [, setInitial] = useAtom(initialAtom);
  const [, setSession] = useAtom(sessionAtom);
  const params = useLocalSearchParams<Params>();

  async function grantAccess() {
    const token = await registerForPushNotificationsAsync();
    await setSession({
      jwt: params.jwt,
      user: {
        id: +params.id,
        name: params.name,
        username: params.name,
        expoToken: token,
      },
    });
    console.log({
      jwt: params.jwt,
      user: {
        id: +params.id,
        name: params.name,
        username: params.name,
        expoToken: token,
      },
    });
    await setInitial(false);
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
