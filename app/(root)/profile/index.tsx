import { Suspense, useEffect } from "react";
import { Link, router } from "expo-router";
import { useAtom, useSetAtom } from "jotai";
import {
  Blinds,
  ChevronRight,
  Headphones,
  HeartHandshake,
  Settings,
  Tablets,
  User,
} from "lucide-react-native";

import LogoutAlertDialog from "../../../components/LogoutAlertDialog";
import { logoutAlertAtom, sessionAtom } from "../../../store/auth";
import { atomWithSuspenseQuery } from "jotai-tanstack-query";
import { getMe } from "../../../services/user";
import { SafeAreaView } from "react-native-safe-area-context";
import { ScrollView, View } from "react-native";
import { TouchableRipple } from "react-native-paper";

const MobileProfilePage = () => {
  const setOpenLogoutAlertDialog = useSetAtom(logoutAlertAtom);

  const open = () => setOpenLogoutAlertDialog(true);

  useEffect(() => {
    return () => {
      setOpenLogoutAlertDialog(false);
    };
  }, []);

  return (
    <>
      <SafeAreaView>
        <ScrollView>
          {/* <VStack flex={1}>
            <Heading px="$5">Profile</Heading>
            <Suspense>
              <ProfileCard />
            </Suspense>
            <Divider mx="5%" width="90%" />
            <PersonalInfoSection />
            <Divider mx="5%" width="90%" />
            <SupportSection />
            <Divider mx="5%" width="90%" />
            <Button
              action="secondary"
              variant="outline"
              onPress={open}
              mt="$2.5"
              mx="$5"
            >
              <ButtonText>Logout</ButtonText>
            </Button>
          </VStack> */}
        </ScrollView>
      </SafeAreaView>
      <LogoutAlertDialog />
    </>
  );
};

const meAtom = atomWithSuspenseQuery((get) => ({
  queryKey: ["me"] as const,
  queryFn: getMe,
  networkMode: "offlineFirst",
}));

const ProfileCard = () => {
  const [{ data }] = useAtom(meAtom);

  return (
    <Link href="(root)/profile/personal" push>
      {/* <TouchableRipple
        px="$5"
        py="$4"
        $pressed-bg="$trueGray200"
        $active-bg="$trueGray200"
        onPress={() => console.log("pressed")}
      >
        <HStack justifyContent="space-between" alignItems="center">
          <HStack space="md">
            <Avatar bg="$blue600">
              <AvatarFallbackText>#{data.username}</AvatarFallbackText>
              <AvatarImage
                source={{
                  uri: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                }}
                alt={data.username}
              />
            </Avatar>
            <VStack>
              <Text>#{data.username}</Text>
              <Text color="$textLight500" size="sm">
                Show Profile
              </Text>
            </VStack>
          </HStack>
          <Icon as={ChevronRight} />
        </HStack>
      </TouchableRipple> */}
    </Link>
  );
};

const PersonalInfoSection = () => {
  return (
    <View>
      {/* <Link href="(root)/profile/personal" push>
        <TouchableRipple onPress={() => console.log("pressed")}>
          <HStack justifyContent="space-between">
            <HStack space="md">
              <Icon as={User} />
              <Text>Personal Info</Text>
            </HStack>
            <Pressable>
              <Icon as={ChevronRight} />
            </Pressable>
          </HStack>
        </TouchableRipple>
      </Link>
      <Pressable
        px="$5"
        py="$3"
        $pressed-bg="$trueGray200"
        $active-bg="$trueGray200"
        onPress={() => console.log("pressed")}
      >
        <HStack justifyContent="space-between">
          <HStack space="md">
            <Icon as={Settings} />
            <Text>Account</Text>
          </HStack>
          <Pressable>
            <Icon as={ChevronRight} />
          </Pressable>
        </HStack>
      </Pressable> */}
    </View>
  );
};

const SupportSection = () => {
  return (
    <View>
      {/* <Heading px="$5">Support</Heading>
      <VStack mt="$2">
        <Pressable
          px="$5"
          py="$3"
          $pressed-bg="$trueGray200"
          $active-bg="$trueGray200"
          onPress={() => console.log("pressed")}
        >
          <HStack justifyContent="space-between">
            <HStack space="md">
              <Icon as={HeartHandshake} />
              <Text>Get Help</Text>
            </HStack>
            <Pressable>
              <Icon as={ChevronRight} />
            </Pressable>
          </HStack>
        </Pressable>
        <Pressable
          px="$5"
          py="$3"
          $pressed-bg="$trueGray200"
          $active-bg="$trueGray200"
          onPress={() => console.log("pressed")}
        >
          <HStack justifyContent="space-between">
            <HStack space="md">
              <Icon as={Headphones} />
              <Text>Contact Support</Text>
            </HStack>
            <Pressable>
              <Icon as={ChevronRight} />
            </Pressable>
          </HStack>
        </Pressable>
      </VStack> */}
    </View>
  );
};

export default MobileProfilePage;
