import { useEffect } from "react";
import * as Notifications from "expo-notifications";

import { generateExpoPushToken } from "../lib/notification";
import { useMutation } from "@apollo/client";
import { UPLOAD_EXPO_TOKEN } from "@/documents/auth";

export default function useTokenChanged() {
  const [uploadToken, {}] = useMutation(UPLOAD_EXPO_TOKEN);

  useEffect(() => {
    const subscription = Notifications.addPushTokenListener(async (token) => {
      const expoToken = await generateExpoPushToken(token);
      await uploadToken({
        variables: { token: expoToken },
      });
    });

    return () => subscription.remove();
  }, []);
}
