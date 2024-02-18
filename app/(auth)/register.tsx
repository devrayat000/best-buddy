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
  HStack,
  Text,
  Link as GLink,
  LinkText,
  FormControlError,
  FormControlErrorIcon,
  AlertCircleIcon,
  FormControlErrorText,
  SafeAreaView,
} from "@gluestack-ui/themed";
import { useState } from "react";
import { Stack, Link, useRouter } from "expo-router";
import { useForm, Controller } from "react-hook-form";
import { useAtom } from "jotai/react";
import { atomWithMutation, queryClientAtom } from "jotai-tanstack-query";
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
      <Stack.Screen options={{ headerTitle: "Log In", headerShown: false }} />
      <Box>
        <Center>
          <Heading bold size="3xl">
            Create Account
          </Heading>
        </Center>
        <Box p="$2" mt="$6">
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
                  pattern: {
                    value: /^2010\\d{3}$/,
                    message: "Invalid Student ID!",
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
                  minLength: {
                    value: 8,
                    message: "Password must have atleast 8 characters!",
                  },
                  maxLength: {
                    value: 32,
                    message: "Password cannot exceed 32 characters!",
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
              <Text>Already have an account?</Text>
              <Link href="(auth)/login" replace asChild>
                <GLink>
                  <LinkText>Log In!</LinkText>
                </GLink>
              </Link>
            </HStack>
            <Button
              variant="solid"
              mt="$2"
              onPress={register}
              isDisabled={loading}
            >
              <ButtonText>Create Account</ButtonText>
            </Button>
          </VStack>
        </Box>
      </Box>
    </SafeAreaView>
  );
}
