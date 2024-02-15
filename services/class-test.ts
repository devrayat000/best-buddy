import { QueryFunction } from "@tanstack/react-query";
import { ListResponse, ResponseData } from "../lib/types";

export type ClassTest = ResponseData<{
  title: string;
  description: string;
  datetime: string;
}>;

export const getClassTests: QueryFunction<
  ListResponse<ClassTest>,
  readonly ["class-tests"],
  number
> = async ({ pageParam: page, signal, queryKey }) => {
  const res = await fetch(
    `http://10.18.116.85:1337/api/${queryKey[0]}?sort=publishedAt:desc&pagination[page]=${page}`,
    { signal }
  );
  const data = await res.json();
  return data;
};
