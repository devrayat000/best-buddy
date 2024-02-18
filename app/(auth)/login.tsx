import {
  Box,
  Button,
  Input,
  FormControl,
  VStack,
  InputField,
  InputSlot,
  InputIcon,
  ButtonText,
  FormControlLabel,
  FormControlLabelText,
  EyeIcon,
  EyeOffIcon,
  Center,
  Heading,
  Text,
  HStack,
  Link as GLink,
  LinkText,
  FormControlError,
  FormControlErrorIcon,
  AlertCircleIcon,
  FormControlErrorText,
  SafeAreaView,
} from "@gluestack-ui/themed";
import { useState } from "react";
import { Link, Stack, useRouter } from "expo-router";
import { useForm, Controller } from "react-hook-form";
import { useAtom, useAtomValue, useSetAtom } from "jotai/react";

import { initialAtom, sessionAtom } from "../../store/auth";
import { atomWithMutation, queryClientAtom } from "jotai-tanstack-query";
import { AuthParams, AuthResponse, login } from "../../services/user";
import { registerForPushNotificationsAsync } from "../../lib/notification";

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
    <SafeAreaView>
      <Stack.Screen options={{ headerTitle: "Log In", headerShown: false }} />
      <Box>
        <Center>
          <Heading bold size="3xl">
            Log In
          </Heading>
        </Center>
        <Box p="$3" mt="$6">
          <VStack space={"md"}>
            <FormControl isInvalid={!!errors.username.message}>
              <FormControlLabel>
                <FormControlLabelText>Student ID</FormControlLabelText>
              </FormControlLabel>
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
                  <Input variant="rounded" p="$1">
                    <InputField
                      placeholder="2010***"
                      onChangeText={onChange}
                      onBlur={onBlur}
                      value={value}
                    />
                  </Input>
                )}
              />
              <FormControlError>
                <FormControlErrorIcon as={AlertCircleIcon} />
                <FormControlErrorText>
                  {errors.username.message}
                </FormControlErrorText>
              </FormControlError>
            </FormControl>
            <FormControl isInvalid={!!errors.password.message}>
              <FormControlLabel>
                <FormControlLabelText>Password</FormControlLabelText>
              </FormControlLabel>
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
                  <Input variant="rounded" p="$1">
                    <InputField
                      type={show ? "text" : "password"}
                      placeholder="********"
                      onChangeText={onChange}
                      onBlur={onBlur}
                      value={value}
                    />
                    <InputSlot pr="$3" onPress={toggleShow}>
                      <InputIcon
                        as={show ? EyeIcon : EyeOffIcon}
                        color="$darkBlue500"
                      />
                    </InputSlot>
                  </Input>
                )}
              />
              <FormControlError>
                <FormControlErrorIcon as={AlertCircleIcon} />
                <FormControlErrorText>
                  {errors.password.message}
                </FormControlErrorText>
              </FormControlError>
            </FormControl>
            <HStack justifyContent="space-between" alignItems="center">
              <Text>Do not have an account?</Text>
              <Link href="(auth)/register" replace asChild>
                <GLink>
                  <LinkText>Register!</LinkText>
                </GLink>
              </Link>
            </HStack>
            <Button
              variant="solid"
              mt="$2"
              onPress={login}
              isDisabled={loading}
            >
              <ButtonText>Log In</ButtonText>
            </Button>
          </VStack>
        </Box>
      </Box>
    </SafeAreaView>
  );
}
