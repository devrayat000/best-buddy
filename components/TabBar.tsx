import { BottomNavigation, Text } from "react-native-paper";
import { BottomTabBarProps } from "@react-navigation/bottom-tabs";
import { useRouter } from "expo-router";

export default function TabBar({
  state,
  descriptors,
  insets,
  navigation,
}: BottomTabBarProps) {
  const router = useRouter();

  return (
    <BottomNavigation.Bar
      navigationState={state}
      safeAreaInsets={insets}
      onTabPress={({ route, preventDefault }) => {
        const event = navigation.emit({
          type: "tabPress",
          target: route.key,
          canPreventDefault: true,
        });

        if (event.defaultPrevented) {
          preventDefault();
        } else {
          // @ts-ignore
          router.navigate({ pathname: route.name, params: route.params });
        }
      }}
      renderIcon={({ route, focused, color }) => {
        const { options } = descriptors[route.key];
        if (options.tabBarIcon) {
          return options.tabBarIcon({ focused, color, size: 24 });
        }

        return null;
      }}
      renderLabel={({ route, ...props }) => {
        const { options } = descriptors[route.key];

        const label =
          options.tabBarLabel !== undefined
            ? typeof options.tabBarLabel === "string"
              ? options.tabBarLabel
              : options.tabBarLabel({
                  ...props,
                  position: options.tabBarLabelPosition || "below-icon",
                  children:
                    options.title !== undefined ? options.title : route.key,
                })
            : options.title !== undefined
            ? options.title
            : route.key;

        return typeof label === "string" ? (
          <Text style={[{ textAlign: "center" }, options.tabBarLabelStyle]}>
            {label}
          </Text>
        ) : (
          label
        );
      }}
    />
  );
}
