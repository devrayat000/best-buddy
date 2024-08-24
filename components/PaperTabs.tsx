import { createMaterialBottomTabNavigator } from "react-native-paper/react-navigation";
import { Link, withLayoutContext, type Tabs } from "expo-router";
import { Platform, Pressable } from "react-native";
import type { BottomTabNavigationEventMap } from "@react-navigation/bottom-tabs";
import type { TabNavigationState, ParamListBase } from "@react-navigation/core";

const Tab = createMaterialBottomTabNavigator();

type Options = NonNullable<React.ComponentProps<typeof Tabs.Screen>["options"]>;

const PaperTabs = withLayoutContext<
  Options,
  typeof Tabs,
  TabNavigationState<ParamListBase>,
  BottomTabNavigationEventMap
  //   @ts-ignore
>(Tab.Navigator, (screens) => {
  return screens.map((screen) => {
    if (
      typeof screen.options !== "function" &&
      screen.options?.href !== undefined
    ) {
      const { href, ...options } = screen.options;
      if (options.tabBarButton) {
        throw new Error("Cannot use `href` and `tabBarButton` together.");
      }
      return {
        ...screen,
        options: {
          ...options,
          tabBarButton: (props) => {
            if (href == null) {
              return null;
            }
            const children =
              Platform.OS === "web" ? (
                props.children
              ) : (
                <Pressable>{props.children}</Pressable>
              );
            return (
              <Link
                {...props}
                style={[{ display: "flex" }, props.style]}
                href={href}
                asChild={Platform.OS !== "web"}
                children={children}
              />
            );
          },
        },
      };
    }
    return screen;
  });
  // @ts-ignore
});

export default PaperTabs;
