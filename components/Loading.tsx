import { View } from "react-native";
import { ActivityIndicator } from "react-native-paper";
import { layoutStyles } from "./styles";

export default function Loading() {
  return (
    <View style={[layoutStyles.grow, layoutStyles.center]}>
      <ActivityIndicator />
    </View>
  );
}
