import { atom, SetStateAction } from "jotai";
import { atomWithStorage, createJSONStorage, loadable } from "jotai/utils";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { AuthResponse } from "../services/user";

type Session = AuthResponse;

const storage = createJSONStorage<any>(() => AsyncStorage);

export const tokenAtom = atomWithStorage<string | null>("token", null, storage);

export const userAtom = atomWithStorage<AuthResponse["user"] | null>(
  "user",
  null,
  storage
);

export const sessionAtom = atom(
  async (get) => {
    const [token, user] = await Promise.all([get(tokenAtom), get(userAtom)]);
    return !token || !user ? null : { jwt: token, user: user };
  },
  async (
    get,
    set,
    setter: SetStateAction<Promise<Session | null> | null | Session>
  ) => {
    const [token, user] = await Promise.all([get(tokenAtom), get(userAtom)]);
    const prev = !token || !user ? null : { jwt: token, user: user };
    const newVal = await (typeof setter === "function" ? setter(prev) : setter);
    console.log("newVal", newVal);
    set(tokenAtom, newVal?.jwt ?? null);
    set(userAtom, newVal?.user ?? null);
  }
);

// export const sessionAtom = atomWithStorage<Session | null>(
//   "sexxion",
//   null,
//   storage
//   // {
//   //   getOnInit: true,
//   // }
// );

export const loadableSession = loadable(sessionAtom);

export const initialAtom = atomWithStorage<boolean>("setup", true, storage);

export const logoutAlertAtom = atom(false);
