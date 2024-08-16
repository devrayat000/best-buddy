import { sessionAtom } from "@/store/auth";
import { Redirect } from "expo-router";
import { useAtomValue } from "jotai";

export default function index() {
  const session = useAtomValue(sessionAtom);
  console.log(session);

  if (!session) {
    return <Redirect href="(auth)/login" />;
  }

  return <Redirect href="(root)/(tabs)/notices" />;
}
