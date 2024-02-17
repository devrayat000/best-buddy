import { QueryFunction } from "@tanstack/react-query";
import type { ListResponse, ResponseData } from "../lib/types";
import constants from "../lib/constants";

export type Notice = ResponseData<{
  title: string;
  description: string;
}>;

export const getNotices: QueryFunction<
  ListResponse<Notice>,
  readonly ["notices"],
  number
> = async ({ pageParam: page, signal, queryKey }) => {
  const accessToken = await constants.accessToken;
  console.log(
    `${constants.apiUrl}/api/${queryKey[0]}?sort=publishedAt:desc&pagination[page]=${page}`
  );
  console.log(accessToken);

  const res = await fetch(
    `${constants.apiUrl}/api/${queryKey[0]}?sort=publishedAt:desc&pagination[page]=${page}`,
    {
      signal,
      headers: {
        Authorization: `Bearer ${accessToken}`,
      },
    }
  );
  const data = await res.json();
  return data;
};
