import { Stack, Link, useRouter } from "expo-router";
import { useForm, Controller } from "react-hook-form";
import { useAtomValue, useSetAtom } from "jotai/react";
import { SafeAreaView } from "react-native-safe-area-context";
import {
  Keyboard,
  KeyboardAvoidingView,
  Platform,
  StyleSheet,
  TouchableWithoutFeedback,
  View,
} from "react-native";
import { Button, HelperText, Text, TextInput } from "react-native-paper";

import { useMutation } from "@apollo/client";
import { AUTHENTICATE_USER_WITH_PASSWORD, CREATE_USER } from "@/documents/auth";
import { UserRoleType } from "@/__generated__/graphql";
import { initialAtom, sessionAtom } from "@/store/auth";
import LoginAnimation from "@/components/auth/LoginAnimation";
import { useState } from "react";
import { z } from "zod";
import { zodResolver } from "@hookform/resolvers/zod";

const schema = z.object({
  name: z.string(),
  username: z.string().transform((val) => `${val}@me.buet.ac.bd`),
  password: z.string(),
});

export default function LoginScreen() {
  const [show, setShow] = useState(false);
  const router = useRouter();
  const isInitial = useAtomValue(initialAtom);
  const setSession = useSetAtom(sessionAtom);

  const {
    control,
    handleSubmit,
    formState: { errors },
  } = useForm({
    defaultValues: {
      name: "",
      username: "",
      password: "",
    },
    resolver: zodResolver(schema),
  });
  const [createUser, { loading: creating }] = useMutation(CREATE_USER);
  const [login, { loading: loggingIn }] = useMutation(
    AUTHENTICATE_USER_WITH_PASSWORD
  );

  const loading = creating || loggingIn;

  const toggleShow = () => setShow((showState) => !showState);

  const register = handleSubmit(async (data) => {
    await createUser({
      variables: {
        data: {
          name: data.name,
          email: data.username,
          password: data.password,
          role: UserRoleType.User,
        },
      },
    });
    await login({
      variables: {
        email: data.username,
        password: data.password,
      },
      async onCompleted(data) {
        if (
          data.authenticateUserWithPassword?.__typename !==
          "UserAuthenticationWithPasswordSuccess"
        )
          return;

        const { item, sessionToken } = data.authenticateUserWithPassword;

        if (isInitial) {
          router.replace({
            pathname: "(auth)/grant-access",
            params: {
              jwt: sessionToken,
              id: item.id.toString(),
              email: item.email,
            },
          });
        } else {
          // await registerForPushNotificationsAsync();
          await setSession({
            jwt: sessionToken,
            user: item,
          });
        }
      },
    });
  });

  return (
    <KeyboardAvoidingView
      style={styles.container}
      behavior={Platform.select({ ios: "padding", android: "padding" })}
    >
      <TouchableWithoutFeedback onPress={Keyboard.dismiss}>
        <SafeAreaView style={styles.container}>
          <Stack.Screen
            options={{ headerTitle: "Create Account", headerShown: false }}
          />
          <View style={styles.container}>
            <View style={styles.center}>
              <Text variant="headlineMedium">Create Account</Text>
            </View>
            <LoginAnimation />
            <View style={{ paddingHorizontal: 12 }}>
              <View style={[styles.vstack, { gap: 0 }]}>
                <View>
                  <Controller
                    name="name"
                    control={control}
                    render={({ field: { onChange, value, onBlur } }) => (
                      <TextInput
                        placeholder="Tajwar Lutha"
                        label={"Full Name"}
                        onChangeText={onChange}
                        onBlur={onBlur}
                        value={value}
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
                <Button mode="contained" onPress={register} disabled={loading}>
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
