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
} from "@gluestack-ui/themed";
import { useState } from "react";
import { SafeAreaView } from "react-native-safe-area-context";
import { Stack, useRouter } from "expo-router";
import { useForm, Controller } from "react-hook-form";
import { useSetAtom } from "jotai/react";

import { wait } from "../../lib/utils";
import { sessionAtom } from "../../store/auth";

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
  const setSession = useSetAtom(sessionAtom);

  const toggleShow = () => setShow((showState) => !showState);

  const login = handleSubmit(async (data) => {
    setLoading(true);
    await wait(1500);
    router.push({
      pathname: "(auth)/grant-access",
      params: {
        jwt: "some.jwt.text",
        id: "2",
        name: "Zul Ikram",
        username: data.username,
      },
    });
    setLoading(false);
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
            <Button
              variant="solid"
              mt="$2"
              onPress={login}
              isDisabled={loading}
            >
              <ButtonText>Log In</ButtonText>
            </Button>
          </VStack>
        </FormControl>
      </Box>
    </SafeAreaView>
  );
}
