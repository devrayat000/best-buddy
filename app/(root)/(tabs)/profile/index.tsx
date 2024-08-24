import { Suspense, useEffect } from "react";
import { Link } from "expo-router";
import { useAtom, useSetAtom } from "jotai";

import LogoutAlertDialog from "../../../../components/LogoutAlertDialog";
import { logoutAlertAtom } from "../../../../store/auth";
import { getMe } from "../../../../services/user";
import { SafeAreaView } from "react-native-safe-area-context";
import { ScrollView, StyleSheet, View } from "react-native";
import {
  TouchableRipple,
  Headline,
  Divider,
  Button,
  useTheme,
  Avatar,
  Text,
  IconButton,
} from "react-native-paper";
import { useSuspenseQuery } from "@apollo/client";
import { GET_CURRENT_USER } from "@/documents/auth";
import { AntDesign, MaterialIcons } from "@expo/vector-icons";
import notifee from "@notifee/react-native";
import { createNotificationChannels } from "@/lib/notification";

const MobileProfilePage = () => {
  const theme = useTheme();
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
          <View>
            <Headline>Profile</Headline>
            <Suspense>
              <ProfileCard />
            </Suspense>
            <Divider />
            <PersonalInfoSection />
            <Divider />
            <SupportSection />
            <Divider />
            <Button
              mode="contained-tonal"
              buttonColor={theme.colors.errorContainer}
              textColor={theme.colors.error}
              onPress={open}
            >
              Logout
            </Button>
          </View>
        </ScrollView>
      </SafeAreaView>
      <LogoutAlertDialog />
    </>
  );
};

const ProfileCard = () => {
  const {
    data: { profile },
  } = useSuspenseQuery(GET_CURRENT_USER);

  return (
    <Link href="/(root)/profile/personal" push asChild>
      <TouchableRipple>
        <View style={[styles.hstack, styles.showProfile]}>
          <View style={[styles.hstack, styles.profileInfoContainer]}>
            <Avatar.Text label="TR" size={52} />
            <View>
              <Text variant="labelLarge">{profile?.name}</Text>
              <Text variant="bodySmall">Show Profile</Text>
            </View>
          </View>
          <MaterialIcons name="chevron-right" size={28} />
        </View>
      </TouchableRipple>
    </Link>
  );
};

const PersonalInfoSection = () => {
  return (
    <View>
      <Link href="/(root)/profile/personal" push asChild>
        <TouchableRipple
          style={styles.infoSectionItem}
          onPress={() => console.log("pressed")}
        >
          <View style={[styles.hstack]}>
            <View style={[styles.hstack]}>
              <AntDesign name="user" size={28} />
              <Text>Personal Info</Text>
            </View>
            <MaterialIcons name="chevron-right" size={24} />
          </View>
        </TouchableRipple>
      </Link>
      <TouchableRipple
        style={styles.infoSectionItem}
        onPress={async () => {
          await createNotificationChannels();
          await notifee.displayNotification({
            title: "Hello",
            body: "This is a notification",
            android: {
              channelId: "notice-added",
              pressAction: { id: "default" },
              sound: "default",
            },
          });
          console.log("pressed");
        }}
      >
        <View style={[styles.hstack]}>
          <View style={[styles.hstack]}>
            <AntDesign name="setting" size={28} />
            <Text>Account</Text>
          </View>
          <MaterialIcons name="chevron-right" size={24} />
        </View>
      </TouchableRipple>
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

const styles = StyleSheet.create({
  vstack: {
    flexDirection: "column",
    alignItems: "stretch",
  },
  hstack: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  showProfile: {
    paddingHorizontal: 12,
    paddingVertical: 8,
  },
  profileInfoContainer: {
    gap: 8,
  },
  infoSectionItem: {
    paddingHorizontal: 12,
    paddingVertical: 12,
  },
});

export default MobileProfilePage;
