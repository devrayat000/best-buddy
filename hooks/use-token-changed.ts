import { useEffect } from "react";
import { useSetAtom } from "jotai";
import * as Notifications from "expo-notifications";
import { useMutation, useQueryClient } from "@tanstack/react-query";

import { generateExpoPushToken } from "../lib/notification";
import { updateUser } from "../services/user";
import constants from "../lib/constants";
import { sessionAtom } from "../store/auth";

export default function useTokenChanged() {
  const setSession = useSetAtom(sessionAtom);
  const client = useQueryClient();
  const { mutateAsync: updateUserAsync } = useMutation({
    mutationKey: ["update_user"],
    mutationFn: updateUser,
    networkMode: "online",
    async onSuccess(data) {
      await setSession(async (prev) => ({
        ...(await prev),
        user: {
          ...(await prev).user,
          expoToken: data.expoToken,
        },
      }));
      await client.invalidateQueries({ queryKey: ["me"] });
    },
  });

  useEffect(() => {
    const subscription = Notifications.addPushTokenListener(async (token) => {
      const expoToken = await generateExpoPushToken(token);
      const session = await constants.session;
      await updateUserAsync({ id: session.user.id, expoToken });
    });

    return () => subscription.remove();
  }, []);
}
