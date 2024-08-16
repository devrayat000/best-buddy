import { Suspense } from "react";
import { FlatList, StyleSheet, View } from "react-native";
import { Link } from "expo-router";
import {
  DocumentRenderer,
  DocumentRendererProps,
} from "@keystone-6/document-renderer";
import {
  Card,
  Headline,
  Text,
  TouchableRipple,
  Divider,
  List,
} from "react-native-paper";
import { SafeAreaView } from "react-native-safe-area-context";

import Loading from "@/components/Loading";
import { layoutStyles } from "@/components/styles";
import { NetworkStatus, useQuery, useSuspenseQuery } from "@apollo/client";
import { NOTICE } from "@/documents/content";
import { OrderDirection } from "@/__generated__/graphql";

export default function HomeScreen() {
  return (
    <SafeAreaView style={layoutStyles.grow}>
      <Suspense fallback={<Loading />}>
        <FetchNotices />
      </Suspense>
    </SafeAreaView>
  );
}

const renderer: DocumentRendererProps["renderers"] = {
  inline: {
    link: Link,
    bold: ({ children }) => (
      <Text style={{ fontWeight: "bold" }}>{children}</Text>
    ),
    italic: ({ children }) => (
      <Text style={{ fontStyle: "italic" }}>{children}</Text>
    ),
  },
  block: {
    block: ({ children }) => <View>{children}</View>,
    paragraph: ({ children, textAlign }) => (
      // @ts-ignore
      <Text style={{ textAlign }}>{children}</Text>
    ),
    heading: ({ children, level, textAlign }) => (
      // @ts-ignore
      <Headline style={{ textAlign }}>{children}</Headline>
    ),
    divider: Divider,
    list(props) {
      return (
        <List.Section>
          {props.children.map((child, index) => (
            <List.Item
              key={index}
              title={child.props.children}
              left={(props) => <List.Icon {...props} icon="circle" />}
            />
          ))}
        </List.Section>
      );
    },
  },
};

function FetchNotices() {
  const { data, refetch, fetchMore, networkStatus } = useQuery(NOTICE, {
    // queryKey: "notices",
    variables: {
      orderBy: { createdAt: OrderDirection.Desc },
      skip: 0,
      take: 20,
    },
  });

  return (
    <View style={layoutStyles.grow}>
      <FlatList
        data={data?.notices}
        ListEmptyComponent={
          <View style={[layoutStyles.center, styles.notFound]}>
            <Text variant="labelLarge" style={styles.notFoundLabel}>
              Nothing in the database 🤷🏻‍♂️
            </Text>
          </View>
        }
        refreshing={networkStatus === NetworkStatus.refetch}
        onRefresh={refetch}
        keyExtractor={(item) => item.id.toString()}
        contentContainerStyle={styles.list}
        renderItem={({ item: notice }) => {
          return (
            <Card elevation={2} accessible style={styles.item}>
              <Link href={`(root)/notices/${notice.id}`} asChild>
                <TouchableRipple
                  style={{ borderRadius: 20, overflow: "hidden" }}
                >
                  <View>
                    <Card.Title title={notice.title} />
                    <Card.Content>
                      <DocumentRenderer
                        document={notice.content?.document}
                        renderers={renderer}
                      />
                    </Card.Content>
                  </View>
                </TouchableRipple>
              </Link>
            </Card>
          );
        }}
        onEndReached={() => {
          fetchMore({
            variables: {
              skip: data?.notices?.length || 0,
              take: 20,
            },
            updateQuery(previousQueryResult, { fetchMoreResult }) {
              if (!fetchMoreResult || !fetchMoreResult.notices?.length)
                return previousQueryResult;

              return {
                notices: previousQueryResult.notices?.concat(
                  fetchMoreResult.notices
                ),
              };
            },
          });
        }}
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
  item: {
    paddingHorizontal: 12,
    borderRadius: 20,
    elevation: 2,
  },
});
