import {
  Heading,
  SafeAreaView,
  ScrollView,
  VStack,
} from "@gluestack-ui/themed";

export default function PersonalInfoPage() {
  return (
    <SafeAreaView marginTop="$8">
      <ScrollView>
        <VStack flex={1}>
          <Heading px="$5">Personal Info</Heading>
        </VStack>
      </ScrollView>
    </SafeAreaView>
  );
}
