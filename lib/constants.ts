import AsyncStorage from "@react-native-async-storage/async-storage";
import { type AuthResponse } from "../services/user";

const constants = {
  get apiUrl() {
    return "http://10.0.2.2:1337";
  },
};

export default constants;

export const BACKGROUND_NOTIFICATION_TASK = "BACKGROUND-NOTIFICATION-TASK";
export const BACKGROUND_DELULU_TASK = "BACKGROUND-DELULU-TASK";
