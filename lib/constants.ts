import AsyncStorage from "@react-native-async-storage/async-storage";
import { type AuthResponse } from "../services/user";

const constants = {
  get apiUrl() {
    return "http://10.0.2.2:1337";
  },
};

export default constants;
