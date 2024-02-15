import { QueryClient } from "@tanstack/react-query";

export const wait = (time: number) =>
  new Promise((res) => setTimeout(res, time));

export const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      staleTime: Infinity,
    },
  },
});
