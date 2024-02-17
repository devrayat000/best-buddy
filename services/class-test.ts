import { QueryFunction } from "@tanstack/react-query";
import type { ListResponse, ResponseData } from "../lib/types";
import constants from "../lib/constants";

export type ClassTest = ResponseData<{
  title: string;
  description: string;
  datetime: string;
}>;

export const getClassTests: QueryFunction<
  ListResponse<ClassTest>,
  readonly ["class-tests"],
  number
> = async ({ pageParam: page, signal, queryKey, meta }) => {
  const res = await fetch(
    `${constants.apiUrl}/api/${queryKey[0]}?sort=publishedAt:desc&pagination[page]=${page}`,
    {
      signal,
      headers: {
        Authorization: `Bearer ${meta.accessToken}`,
      },
    }
  );
  const data = await res.json();
  return data;
};
