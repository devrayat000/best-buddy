import { QueryFunction } from "@tanstack/react-query";
import { ListResponse, ResponseData } from "../lib/types";

export type Notice = ResponseData<{
  title: string;
  description: string;
}>;

export const getNotices: QueryFunction<
  ListResponse<Notice>,
  readonly ["notices"],
  number
> = async ({ pageParam: page, signal, queryKey }) => {
  const res = await fetch(
    `http://10.18.116.85:1337/api/${queryKey[0]}?sort=publishedAt:desc&pagination[page]=${page}`,
    { signal }
  );
  const data = await res.json();
  return data;
};
