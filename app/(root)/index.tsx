import {
  Text,
  Box,
  SafeAreaView,
  Center,
  HStack,
  VStack,
  Fab,
  FabIcon,
  FlatList,
  useToken,
} from "@gluestack-ui/themed";
import { useAtom } from "jotai";
import { atomWithSuspenseInfiniteQuery } from "jotai-tanstack-query";
import { Suspense } from "react";
import { ActivityIndicator, TouchableNativeFeedback } from "react-native";
import FeatherIcon from "@expo/vector-icons/Feather";
import { Link, useRouter } from "expo-router";

import { Notice, getNotices } from "../../services/notice";
import { sessionAtom } from "../../store/auth";
import { ListResponse } from "../../lib/types";

export default function HomeScreen() {
  return (
    <SafeAreaView flex={1}>
      <Box flex={1}>
        <Suspense
          fallback={
            <Center>
              <ActivityIndicator />
            </Center>
          }
        >
          <FetchNotices />
        </Suspense>
      </Box>
    </SafeAreaView>
  );
}

const noticesAtom = atomWithSuspenseInfiniteQuery(() => ({
  queryKey: ["notices"] as const,
  initialPageParam: 1,
  getNextPageParam: (lastPage) =>
    lastPage?.meta?.pagination?.pageCount !== lastPage?.meta?.pagination?.page
      ? lastPage?.meta?.pagination?.page + 1
      : null,
  queryFn: getNotices,
}));

function FetchNotices() {
  const [{ data, refetch, isRefetching }] = useAtom(noticesAtom);
  const cardRadius = useToken("radii", "lg");

  const refresh = () => refetch({ throwOnError: true });
  const flatData = data.pages.flatMap((arr) => arr.data);

  return (
    <Box flex={1}>
      {!flatData.length ? (
        <Center mt="$20">
          <Text size="lg" fontWeight="$medium">
            Nothing in the database 🤷🏻‍♂️
          </Text>
        </Center>
      ) : (
        <FlatList
          data={flatData}
          rowGap="$3"
          pt="$8"
          refreshing={isRefetching}
          onRefresh={refresh}
          // @ts-ignore
          keyExtractor={(item) => item.id}
          // @ts-ignore
          renderItem={({ item: notice }: { item: Notice }) => {
            return (
              <Link href={`(root)/notices/${notice.id}`} asChild>
                <TouchableNativeFeedback style={{ borderRadius: cardRadius }}>
                  <Box
                    borderRadius="$lg"
                    my="$1.5"
                    py="$2"
                    px="$3"
                    mx="$2"
                    bg="$white"
                    elevation="$1"
                    sx={{
                      _dark: {},
                    }}
                  >
                    <VStack>
                      <HStack
                        justifyContent="space-between"
                        alignItems="flex-start"
                      >
                        <Text size="lg">{notice.attributes.title}</Text>
                      </HStack>
                      <Text size="sm">{notice.attributes.description}</Text>
                    </VStack>
                  </Box>
                </TouchableNativeFeedback>
              </Link>
            );
          }}
        />
      )}
      <Fab size="lg" position="absolute" bottom="$20" onPress={refresh}>
        <FabIcon as={(props) => <FeatherIcon name="refresh-cw" {...props} />} />
      </Fab>
    </Box>
  );
}
