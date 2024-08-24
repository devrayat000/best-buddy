import { QueryCache, QueryClient } from "@tanstack/react-query";
import { subDays, set } from "date-fns";

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

export const omitNull = <T>(value?: T | null) => value ?? undefined;

export const getReminderTime = (date: Date) => {
  const a = set(subDays(date, 1), {
    hours: 12 + 9,
    minutes: 0,
    seconds: 0,
    milliseconds: 0,
  });
  console.log(a);
  return a;
};
