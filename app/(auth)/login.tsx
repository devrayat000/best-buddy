import { useState } from "react";
import { Link, Stack, useRouter } from "expo-router";
import { useForm, Controller } from "react-hook-form";
import { useAtom, useAtomValue, useSetAtom } from "jotai/react";
import { SafeAreaView } from "react-native-safe-area-context";
import {
  Keyboard,
  KeyboardAvoidingView,
  Platform,
  StyleSheet,
  TouchableWithoutFeedback,
  View,
} from "react-native";
import { atomWithMutation, queryClientAtom } from "jotai-tanstack-query";
import { Button, HelperText, Text, TextInput } from "react-native-paper";

import { initialAtom, sessionAtom } from "@/store/auth";
import { AuthParams, AuthResponse, login } from "@/services/user";
import { registerForPushNotificationsAsync } from "@/lib/notification";
import LoginAnimation from "@/components/auth/LoginAnimation";

const loginAtom = atomWithMutation<AuthResponse, AuthParams, Error>((get) => ({
  mutationKey: ["login"],
  mutationFn: login,
  networkMode: "online",
  onSuccess() {
    const client = get(queryClientAtom);
    return client.invalidateQueries({ queryKey: ["me"] });
  },
}));

export default function LoginScreen() {
  const [show, setShow] = useState(false);
  const [loading, setLoading] = useState(false);
  const router = useRouter();

  const {
    control,
    handleSubmit,
    formState: { errors },
  } = useForm({
    defaultValues: {
      username: "",
      password: "",
    },
  });
  const isInitial = useAtomValue(initialAtom);
  const [{ mutateAsync: loginAsync, error: loginError }] = useAtom(loginAtom);
  const setSession = useSetAtom(sessionAtom);

  const toggleShow = () => setShow((showState) => !showState);

  const login = handleSubmit(async (data) => {
    setLoading(true);
    const session = await loginAsync(data);
    setLoading(false);
    if (isInitial) {
      router.replace({
        pathname: "(auth)/grant-access",
        params: {
          jwt: session.jwt,
          id: session.user.id.toString(),
          username: session.user.username,
        },
      });
    } else {
      await registerForPushNotificationsAsync();
      await setSession(session);
    }
  });

  return (
    <KeyboardAvoidingView
      style={styles.container}
      behavior={Platform.select({ ios: "padding", android: "padding" })}
    >
      <TouchableWithoutFeedback onPress={Keyboard.dismiss}>
        <SafeAreaView style={styles.container}>
          <Stack.Screen
            options={{ headerTitle: "Log In", headerShown: false }}
          />
          <View style={styles.container}>
            <View style={styles.center}>
              <Text variant="headlineMedium">Log In</Text>
            </View>
            <LoginAnimation />
            <View style={{ paddingHorizontal: 12 }}>
              <View style={[styles.vstack, { gap: 8 }]}>
                <View>
                  <Controller
                    name="username"
                    control={control}
                    rules={{
                      required: {
                        value: true,
                        message: "Student ID is required!",
                      },
                    }}
                    render={({ field: { onChange, value, onBlur } }) => (
                      <TextInput
                        placeholder="2010***"
                        label={"Student ID"}
                        onChangeText={onChange}
                        onBlur={onBlur}
                        value={value}
                        keyboardType="number-pad"
                        mode="outlined"
                        outlineStyle={styles.input}
                        onSubmitEditing={Keyboard.dismiss}
                      />
                    )}
                  />
                  <HelperText type="error" visible={!!errors.username?.message}>
                    {errors.username?.message}
                  </HelperText>
                </View>
                <View>
                  <Controller
                    name="password"
                    control={control}
                    rules={{
                      required: {
                        value: true,
                        message: "Password is Required!",
                      },
                    }}
                    render={({ field: { onChange, value, onBlur } }) => (
                      <TextInput
                        placeholder="********"
                        label={"Password"}
                        onChangeText={onChange}
                        onBlur={onBlur}
                        value={value}
                        mode="outlined"
                        outlineStyle={styles.input}
                        onSubmitEditing={Keyboard.dismiss}
                        secureTextEntry={!show}
                        right={
                          <TextInput.Icon
                            icon={show ? "eye-off" : "eye"}
                            onPress={toggleShow}
                          />
                        }
                      />
                    )}
                  />
                  <HelperText type="error" visible={!!errors.password?.message}>
                    {errors.password?.message}
                  </HelperText>
                </View>
                <View style={styles.hstack}>
                  <Text>Do not have an account?</Text>
                  <Link href="(auth)/register" replace>
                    Register!
                  </Link>
                </View>
                <Button mode="contained" onPress={login} disabled={loading}>
                  Log In
                </Button>
              </View>
            </View>
          </View>
        </SafeAreaView>
      </TouchableWithoutFeedback>
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  center: {
    // flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  vstack: {
    // flex: 1,
    flexDirection: "column",
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
    borderRadius: 24,
  },
});
