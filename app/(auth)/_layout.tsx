import { useAtomValue } from "jotai/react";
import { sessionAtom } from "../../store/auth";
import { Redirect, Slot } from "expo-router";

export default function AuthLayout() {
  const session = useAtomValue(sessionAtom);

  if (!!session) {
    return <Redirect href="(root)/" />;
  }

  return <Slot />;
}
