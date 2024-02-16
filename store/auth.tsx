import { atom } from "jotai";
import { atomWithStorage, createJSONStorage, loadable } from "jotai/utils";
import AsyncStorage from "@react-native-async-storage/async-storage";

type Session = {
  jwt: string;
  user: {
    id: number;
    name: string;
    username: string;
    expoToken?: string;
  };
};

const storage = createJSONStorage<any>(() => AsyncStorage);

export const sessionAtom = atomWithStorage<Session | null>(
  "sexxion",
  null,
  storage,
  {
    getOnInit: true,
  }
);

export const loadableSession = loadable(sessionAtom);

export const initialAtom = atomWithStorage<boolean>("setup", true, storage, {
  getOnInit: true,
});

export const logoutAlertAtom = atom(false);
