import { useAtom } from "jotai";
import { atomWithSuspenseInfiniteQuery } from "jotai-tanstack-query";
import { Suspense } from "react";
import { ActivityIndicator, TouchableNativeFeedback, View } from "react-native";
import FeatherIcon from "@expo/vector-icons/Feather";
import { useRouter } from "expo-router";

import { ClassTest, getClassTests } from "../../services/class-test";
import { SafeAreaView } from "react-native-safe-area-context";

export default function ClassTestsScreen() {
  return (
    <SafeAreaView style={{ flex: 1 }}>
      {/* <Box flex={1}>
        <Suspense
          fallback={
            <Center>
              <ActivityIndicator />
            </Center>
          }
        >
          <FetchClassTests />
        </Suspense>
      </Box> */}
    </SafeAreaView>
  );
}

const classTestsAtom = atomWithSuspenseInfiniteQuery(() => ({
  queryKey: ["class-tests"] as const,
  initialPageParam: 1,
  getNextPageParam: (lastPage) =>
    lastPage?.meta?.pagination?.pageCount !== lastPage?.meta?.pagination?.page
      ? lastPage?.meta?.pagination?.page + 1
      : null,
  queryFn: getClassTests,
}));

function FetchClassTests() {
  const [{ data, refetch, isRefetching }] = useAtom(classTestsAtom);
  const router = useRouter();
  // const cardRadius = useToken("radii", "lg");

  const refresh = () => refetch({ throwOnError: true });
  const flatData = data.pages.flatMap((arr) => arr.data);

  return (
    <View style={{ flex: 1 }}>
      {/* {!flatData.length ? (
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
          // @ts-ignorer
          keyExtractor={(item) => item?.id}
          // @ts-ignore
          renderItem={({ item: classTest }: { item: ClassTest }) => {
            return (
              <TouchableNativeFeedback
                style={{ borderRadius: cardRadius }}
                onPress={() =>
                  router.push(`(root)/class-tests/${classTest.id}`)
                }
              >
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
                      <Text size="lg">{classTest.attributes.title}</Text>
                    </HStack>
                    <Text size="sm">{classTest.attributes.description}</Text>
                  </VStack>
                </Box>
              </TouchableNativeFeedback>
            );
          }}
        />
      )}
      <Fab size="lg" position="absolute" bottom="$20" onPress={refresh}>
        <FabIcon as={(props) => <FeatherIcon name="refresh-cw" {...props} />} />
      </Fab> */}
    </View>
  );
}
