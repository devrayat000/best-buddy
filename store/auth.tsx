import { atom } from "jotai";
import { atomWithStorage, createJSONStorage, loadable } from "jotai/utils";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { AuthResponse } from "../services/user";

type Session = AuthResponse;

const storage = createJSONStorage<any>(() => AsyncStorage);

export const sessionAtom = atomWithStorage<Session | null>(
  "sexxion",
  null,
  storage
  // {
  //   getOnInit: true,
  // }
);

export const loadableSession = loadable(sessionAtom);

export const initialAtom = atomWithStorage<boolean>("setup", true, storage);

export const logoutAlertAtom = atom(false);
