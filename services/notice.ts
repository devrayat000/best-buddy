import { QueryFunction } from "@tanstack/react-query";
import type { ListResponse, ResponseData } from "../lib/types";
import constants from "../lib/constants";
import { queryCache } from "../lib/utils";
import {
  atomWithSuspenseInfiniteQuery,
  atomWithSuspenseQuery,
} from "jotai-tanstack-query";
import { atomFamily } from "jotai/utils";
import { InfiniteData, CancelledError } from "@tanstack/query-core";
import { sessionAtom } from "@/store/auth";

export type Notice = {
  title: string;
  description: string;
};

export type NoticeParams = {
  accessToken: string;
  key: "notices";
  page: number;
  signal: AbortSignal;
};

export const noticesAtom = atomWithSuspenseInfiniteQuery<
  ListResponse<Notice>,
  Error,
  InfiniteData<ListResponse<Notice>, unknown>,
  readonly ["notices"],
  number
>((get) => ({
  queryKey: ["notices"] as const,
  initialPageParam: 1,
  getNextPageParam: (lastPage) =>
    lastPage?.meta?.pagination?.pageCount !== lastPage?.meta?.pagination?.page
      ? lastPage?.meta?.pagination?.page + 1
      : null,
  queryFn: async ({ pageParam, queryKey, signal }) => {
    const session = await get(sessionAtom);
    if (!session) {
      const cause = new CancelledError({ revert: true });
      throw new Error("Session not available", { cause });
    }
    const accessToken = session.jwt;

    const res = await fetch(
      `${constants.apiUrl}/api/${queryKey[0]}?sort=publishedAt:desc&pagination[page]=${pageParam}`,
      {
        signal,
        headers: {
          Authorization: `Bearer ${accessToken}`,
        },
      }
    );
    const data = await res.json();
    return data;
  },
}));

export const noticeAtomFamily = atomFamily(
  ({ id }: { id: number }) => {
    return atomWithSuspenseQuery((get) => ({
      queryKey: ["notices", id] as const,
      queryFn: async ({ signal, queryKey }) => {
        const session = await get(sessionAtom);
        if (!session) {
          const cause = new CancelledError({ revert: true });
          throw new Error("Session not available", { cause });
        }
        const accessToken = session.jwt;

        const res = await fetch(
          `${constants.apiUrl}/api/${queryKey[0]}/${queryKey[1]}`,
          {
            signal,
            headers: {
              Authorization: `Bearer ${accessToken}`,
            },
          }
        );
        const { data } = await res.json();
        return data as ResponseData<Notice>;
      },
    }));
  },
  (a, b) => a.id === b.id
);
