import AsyncStorage from "@react-native-async-storage/async-storage";
import { type AuthResponse } from "../services/user";

const constants = {
  get apiUrl() {
    return process.env.EXPO_PUBLIC_API_URL;
  },
  get session() {
    return AsyncStorage.getItem("sexxion").then<AuthResponse>(JSON.parse);
  },
  get accessToken() {
    return this.session.then((session) => session.jwt);
  },
};

export default constants;
