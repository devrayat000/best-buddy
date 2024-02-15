import { SafeAreaView, VStack, Button, ButtonText } from "@gluestack-ui/themed";
import { Stack, Link, Redirect } from "expo-router";
import { useAtomValue } from "jotai";
import React from "react";
import { initialAtom } from "../../store/auth";

export default function GetStartedScreen() {
  const initial = useAtomValue(initialAtom);

  if (!initial) {
    return <Redirect href="(auth)/login" />;
  }

  return (
    <SafeAreaView flex={1}>
      <Stack.Screen options={{ headerShown: false }} />
      <VStack flex={1} justifyContent="flex-end">
        <Link href="(auth)/login" replace asChild>
          <Button borderRadius="$full" w="$full">
            <ButtonText>Get Started</ButtonText>
          </Button>
        </Link>
      </VStack>
    </SafeAreaView>
  );
}
