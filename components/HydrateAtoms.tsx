import { useHydrateAtoms } from "jotai/utils";
import { queryClientAtom } from "jotai-tanstack-query";
import { queryClient } from "../lib/utils";

const HydrateAtoms = ({ children }: { children: React.ReactNode }) => {
  // @ts-ignore
  useHydrateAtoms([[queryClientAtom, queryClient]]);
  return children;
};

export default HydrateAtoms;
