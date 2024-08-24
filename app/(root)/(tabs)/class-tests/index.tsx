import { Suspense } from "react";
import { FlatList, StyleSheet, View } from "react-native";
import { Link, useRouter } from "expo-router";
import { SafeAreaView } from "react-native-safe-area-context";
import { Card, Text, TouchableRipple, useTheme } from "react-native-paper";
import { NetworkStatus, useQuery } from "@apollo/client";
import { DocumentRenderer } from "@keystone-6/document-renderer";

import { CLASS_TESTS } from "@/documents/content";
import { layoutStyles } from "@/components/styles";
import Loading from "@/components/Loading";
import { OrderDirection } from "@/__generated__/graphql";
import { renderer } from "@/components/document-renderer";
import { formatDistanceToNow } from "date-fns";

export default function ClassTestsScreen() {
  return (
    <SafeAreaView style={layoutStyles.grow}>
      <FetchClassTests />
    </SafeAreaView>
  );
}

function FetchClassTests() {
  const { data, loading, refetch, networkStatus, fetchMore } = useQuery(
    CLASS_TESTS,
    {
      variables: {
        orderBy: { createdAt: OrderDirection.Desc },
        offset: 0,
        limit: 20,
      },
    }
  );
  const theme = useTheme();

  if (loading) {
    return <Loading />;
  }

  return (
    <View style={{ flex: 1 }}>
      <FlatList
        data={data?.classTests}
        refreshing={networkStatus === NetworkStatus.refetch}
        onRefresh={refetch}
        keyExtractor={(item) => item.id}
        contentContainerStyle={styles.list}
        renderItem={({ item: classTest }) => {
          return (
            <View
              style={[
                styles.item,
                { backgroundColor: theme.colors.surfaceVariant },
              ]}
            >
              <Link
                href={{
                  pathname: "/(root)/(modals)/class-tests/[id]",
                  params: { id: classTest.id },
                }}
                asChild
              >
                <TouchableRipple style={styles.card}>
                  <View>
                    <Text variant="titleMedium">{classTest.title}</Text>
                    <Text variant="bodyMedium" numberOfLines={2}>
                      {classTest.content}
                    </Text>
                    <View style={[layoutStyles.hstack, { marginTop: 4 }]}>
                      <Text variant="bodySmall" accessibilityLabel="Created at">
                        {formatDistanceToNow(new Date(classTest.createdAt))}
                      </Text>
                      <Text variant="bodySmall" accessibilityLabel="Created by">
                        {classTest.createdBy?.role}
                      </Text>
                    </View>
                  </View>
                </TouchableRipple>
              </Link>
            </View>
          );
        }}
        onEndReached={() => {
          fetchMore({
            variables: {
              offset: data?.classTests?.length || 0,
            },
            updateQuery(
              previousData,
              { fetchMoreResult, variables: { offset } }
            ) {
              const updatedData = previousData.classTests?.slice(0) ?? [];
              for (
                let i = 0;
                i < (fetchMoreResult.classTests?.length ?? 0);
                ++i
              ) {
                const newData = fetchMoreResult.classTests?.[i];
                if (newData) updatedData[offset + i] = newData;
              }
              return { ...previousData, notices: updatedData };
            },
          });
        }}
        ListEmptyComponent={
          <View style={[layoutStyles.center, styles.notFound]}>
            <Text variant="labelLarge" style={styles.notFoundLabel}>
              Nothing in the database 🤷🏻‍♂️
            </Text>
          </View>
        }
        ListFooterComponent={
          (data?.classTests?.length ?? 0) < (data?.classTestsCount ?? 0)
            ? Loading
            : undefined
        }
      />
    </View>
  );
}

const styles = StyleSheet.create({
  notFound: {
    marginTop: 16,
  },
  notFoundLabel: {
    // fontSize: 20,
    fontWeight: "medium",
  },
  list: {
    gap: 12,
    paddingBottom: 12,
  },
  card: {
    borderRadius: 12,
    paddingHorizontal: 12,
    paddingVertical: 8,
  },
  item: {
    overflow: "hidden",
    marginHorizontal: 4,
    borderRadius: 12,
  },
});
