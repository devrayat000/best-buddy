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
} from "@gluestack-ui/themed";
import { useState } from "react";
import { SafeAreaView } from "react-native-safe-area-context";
import { Stack, Link, useRouter } from "expo-router";
import { useForm, Controller } from "react-hook-form";
import { useAtom, useSetAtom } from "jotai/react";
import { sessionAtom } from "../../store/auth";
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
        <FormControl p="$2" mt="$6">
          <VStack space={"md"}>
            <VStack>
              <FormControlLabel>
                <FormControlLabelText>Student ID</FormControlLabelText>
              </FormControlLabel>
              <Controller
                name="username"
                control={control}
                rules={{ required: true }}
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
            </VStack>
            <VStack>
              <FormControlLabel>
                <FormControlLabelText>Password</FormControlLabelText>
              </FormControlLabel>
              <Controller
                name="password"
                control={control}
                rules={{ required: true }}
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
            </VStack>
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
        </FormControl>
      </Box>
    </SafeAreaView>
  );
}
