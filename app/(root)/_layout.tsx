import { sessionAtom } from "@/store/auth";
import { Redirect, Stack } from "expo-router";
import { useAtomValue } from "jotai";
import * as Notification from "expo-notifications";
import { BACKGROUND_NOTIFICATION_TASK } from "@/lib/constants";
import { useEffect } from "react";
import * as TaskManager from "expo-task-manager";

export default function ProtectedLayout() {
  const session = useAtomValue(sessionAtom);

  useEffect(() => {
    setImmediate(async () => {
      if (
        TaskManager.isTaskDefined(BACKGROUND_NOTIFICATION_TASK) &&
        !(await TaskManager.isTaskRegisteredAsync(BACKGROUND_NOTIFICATION_TASK))
      ) {
        await Notification.registerTaskAsync(BACKGROUND_NOTIFICATION_TASK);
      }
    });

    return () => {
      setImmediate(async () => {
        if (
          await TaskManager.isTaskRegisteredAsync(BACKGROUND_NOTIFICATION_TASK)
        ) {
          await Notification.unregisterTaskAsync(BACKGROUND_NOTIFICATION_TASK);
        }
      });
    };
  }, []);

  if (!session) {
    return <Redirect href="/(auth)/get-started" />;
  }

  return (
    <Stack>
      <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
      <Stack.Screen
        name="(modals)"
        options={{
          presentation: "containedTransparentModal",
          animation: "slide_from_bottom",
          gestureDirection: "vertical",
          gestureEnabled: true,
          fullScreenGestureEnabled: true,
          customAnimationOnGesture: true,
          headerShown: false,
        }}
      />
    </Stack>
  );
}
