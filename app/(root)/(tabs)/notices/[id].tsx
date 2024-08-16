import { View, RefreshControl } from "react-native";
import { Redirect, useLocalSearchParams } from "expo-router";
import { useAtomValue } from "jotai";
import { noticeAtomFamily } from "@/services/notice";
import { SafeAreaView } from "react-native-safe-area-context";
import { layoutStyles } from "@/components/styles";
import { Suspense } from "react";
import Loading from "@/components/Loading";
import { Text } from "react-native-paper";

export default function NoticeDetailsScreen() {
  const { id } = useLocalSearchParams();
  if (typeof id !== "string") {
    return <Redirect href="/notices" />;
  }

  return (
    <SafeAreaView style={layoutStyles.grow}>
      <Suspense fallback={<Loading />}>
        <GetNotice id={parseInt(id)} />
      </Suspense>
    </SafeAreaView>
  );
}

function GetNotice({ id }: { id: number }) {
  const { data, isRefetching, refetch } = useAtomValue(
    noticeAtomFamily({ id })
  );

  return (
    <RefreshControl
      style={layoutStyles.grow}
      refreshing={isRefetching}
      onRefresh={refetch}
    >
      <View style={layoutStyles.grow}>
        <Text variant="titleLarge">{data.attributes.title}</Text>
        <Text variant="bodyMedium">{data.attributes.description}</Text>
      </View>
    </RefreshControl>
  );
}
