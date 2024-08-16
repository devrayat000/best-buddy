import { StyleSheet } from "react-native";

export const layoutStyles = StyleSheet.create({
  vstack: {
    flexDirection: "column",
    alignItems: "stretch",
  },
  hstack: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  center: {
    justifyContent: "center",
    alignItems: "center",
  },
  grow: {
    flex: 1,
  },
});
