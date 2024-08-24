import { View, RefreshControl } from "react-native";
import { Redirect, useLocalSearchParams, useRouter } from "expo-router";
import { SafeAreaView } from "react-native-safe-area-context";
import { Suspense, useCallback, useRef } from "react";
import { Text, useTheme } from "react-native-paper";
import { NetworkStatus, useSuspenseQuery } from "@apollo/client";
import { DocumentRenderer } from "@keystone-6/document-renderer";
import BottomSheet, {
  BottomSheetBackdrop,
  BottomSheetView,
} from "@gorhom/bottom-sheet";

import { layoutStyles } from "@/components/styles";
import Loading from "@/components/Loading";
import { NOTICE } from "@/documents/content";
import { renderer } from "@/components/document-renderer";

export default function NoticeDetailsScreen() {
  const { id } = useLocalSearchParams();

  const bottomSheetRef = useRef<BottomSheet>(null);
  const router = useRouter();
  const theme = useTheme();

  if (typeof id !== "string") {
    return <Redirect href="/notices" />;
  }

  return (
    <BottomSheet
      ref={bottomSheetRef}
      snapPoints={["90%"]}
      enablePanDownToClose
      onClose={() => router.canGoBack() && router.back()}
      backdropComponent={BottomSheetBackdrop}
      backgroundStyle={{ backgroundColor: theme.colors.background }}
    >
      <BottomSheetView style={[layoutStyles.grow]}>
        <GetNotice id={id} />
      </BottomSheetView>
    </BottomSheet>
  );
}

// TODO: Details page for a notice
function GetNotice({ id }: { id: string }) {
  const {
    data: { notice },
  } = useSuspenseQuery(NOTICE, {
    variables: { id },
  });

  return (
    <View style={layoutStyles.grow}>
      <Text variant="titleLarge" style={{ fontWeight: "bold" }}>
        {notice?.title}
      </Text>
      <View>
        <DocumentRenderer
          document={notice?.content?.document}
          renderers={renderer}
        />
      </View>
      <Text>
        by{" "}
        <Text style={{ fontStyle: "italic" }}>{notice?.createdBy?.name}</Text>
      </Text>
    </View>
  );
}
