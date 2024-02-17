import {
  type MutationFunction,
  type QueryFunction,
} from "@tanstack/react-query";

import { User } from "../lib/types";
import constants from "../lib/constants";

export type AuthResponse = {
  jwt: string;
  user: User;
};

export type AuthParams = {
  username: string;
  password: string;
};

export const login: MutationFunction<AuthResponse, AuthParams> = async (
  variables
) => {
  const res = await fetch(`${constants.apiUrl}/api/auth/local`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      identifier: variables.username,
      password: variables.password,
    }),
  });
  const data = await res.json();
  return data;
};

export const register: MutationFunction<AuthResponse, AuthParams> = async (
  variables
) => {
  const res = await fetch(`${constants.apiUrl}/api/auth/local/register`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      ...variables,
      email: `${variables.username}@me.buet.ac.bd`,
    }),
  });
  const data = await res.json();
  return data;
};

export type AuthUpdateParams = {
  id: string | number;
  expoToken?: string;
};

export const updateUser: MutationFunction<User, AuthUpdateParams> = async ({
  id,
  expoToken,
}) => {
  const accessToken = await constants.accessToken;
  const res = await fetch(`${constants.apiUrl}/api/users/${id}`, {
    method: "PUT",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${accessToken}`,
    },
    body: JSON.stringify({ expoToken }),
  });
  const data = await res.json();
  return data;
};

export const getMe: QueryFunction<User, readonly ["me"]> = async ({
  signal,
}) => {
  const accessToken = await constants.accessToken;
  const res = await fetch(`${constants.apiUrl}/api/users/me`, {
    signal,
    headers: {
      Authorization: `Bearer ${accessToken}`,
    },
  });
  const data = await res.json();
  return data;
};
