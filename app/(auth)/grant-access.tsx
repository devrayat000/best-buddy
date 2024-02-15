import { SafeAreaView, VStack, Button, ButtonText } from "@gluestack-ui/themed";
import { Stack } from "expo-router";
import { useAtom } from "jotai";

import { initialAtom, sessionAtom } from "../../store/auth";
import { registerForPushNotificationsAsync } from "../../lib/notification";

export default function GetStartedScreen() {
  const [, setInitial] = useAtom(initialAtom);
  const [, setSession] = useAtom(sessionAtom);

  async function grantAccess() {
    const token = await registerForPushNotificationsAsync();
    await setSession(async (prev) => ({
      ...(await prev),
      user: {
        ...(await prev).user,
        expoToken: token,
      },
    }));
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
