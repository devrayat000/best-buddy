import { ScrollView, View } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";

export default function PersonalInfoPage() {
  return (
    <SafeAreaView>
      <ScrollView>
        <View>{/* <Heading px="$5">Personal Info</Heading> */}</View>
      </ScrollView>
    </SafeAreaView>
  );
}
