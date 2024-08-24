import { Stack, Link, Redirect } from "expo-router";
import { useAtomValue } from "jotai";
import { Button } from "react-native-paper";
import { StyleSheet, View } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";

import { initialAtom } from "../../store/auth";

export default function GetStartedScreen() {
  const initial = useAtomValue(initialAtom);

  // if (!initial) {
  //   return <Redirect href="(auth)/login" />;
  // }

  return (
    <SafeAreaView style={styles.container}>
      <Stack.Screen options={{ headerShown: false }} />
      <View style={[styles.vstack, { justifyContent: "flex-end" }]}>
        <Link href="/(auth)/login" replace asChild>
          <Button mode="contained">Get Started</Button>
        </Link>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  vstack: {
    flex: 1,
    alignItems: "stretch",
    padding: 16,
  },
});
