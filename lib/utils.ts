import { QueryCache, QueryClient } from "@tanstack/react-query";

export const wait = (time: number) =>
  new Promise((res) => setTimeout(res, time));

export const queryCache = new QueryCache({
  onError: (error) => {
    console.log(error);
  },
  onSuccess: (data) => {
    console.log(data);
  },
  onSettled: (data, error) => {
    console.log(data, error);
  },
});

export const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      staleTime: Infinity,
    },
  },
  queryCache,
});
