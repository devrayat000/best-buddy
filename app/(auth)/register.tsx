import { useState } from "react";
import { Stack, Link, useRouter } from "expo-router";
import { useForm, Controller } from "react-hook-form";
import { useAtom } from "jotai/react";
import { atomWithMutation, queryClientAtom } from "jotai-tanstack-query";
import { SafeAreaView } from "react-native-safe-area-context";
import { StyleSheet, View } from "react-native";
import { Button, HelperText, Text, TextInput } from "react-native-paper";

import {
  type AuthParams,
  type AuthResponse,
  register,
} from "../../services/user";

const registerAtom = atomWithMutation<AuthResponse, AuthParams>((get) => ({
  mutationKey: ["register"],
  mutationFn: register,
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
  const [{ mutateAsync: registerAsync }] = useAtom(registerAtom);

  const toggleShow = () => setShow((showState) => !showState);

  const register = handleSubmit(async (data) => {
    setLoading(true);
    const session = await registerAsync(data);
    setLoading(false);
    router.replace({
      pathname: "(auth)/grant-access",
      params: {
        jwt: session.jwt,
        id: session.user.id.toString(),
        username: session.user.username,
      },
    });
  });

  return (
    <SafeAreaView>
      <Stack.Screen options={{ headerTitle: "Register", headerShown: false }} />
      <View>
        <View style={[styles.center]}>
          <Text variant="headlineMedium">Create Account</Text>
        </View>
        <View style={{ padding: 12, marginTop: 24 }}>
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
                    onChangeText={onChange}
                    onBlur={onBlur}
                    value={value}
                    label={"Student ID"}
                    keyboardType="number-pad"
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
                    // type={show ? "text" : "password"}
                    placeholder="********"
                    onChangeText={onChange}
                    onBlur={onBlur}
                    value={value}
                  />
                )}
              />
              <HelperText type="error" visible={!!errors.password?.message}>
                {errors.password?.message}
              </HelperText>
            </View>
            <View style={styles.hstack}>
              <Text>Already have an account?</Text>
              <Link href="(auth)/login" replace>
                Log In!
              </Link>
            </View>
            <Button onPress={register} disabled={loading}>
              Create Account
            </Button>
          </View>
        </View>
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
