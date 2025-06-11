import 'package:graphql/client.dart';
import '../../../core/graphql/schema.graphql.dart';
import 'graphql/upload_fcm_token.graphql.dart';

/// Upload FCM token to the server
Future<Mutation$UploadFcmToken> uploadFcmToken({
  required GraphQLClient client,
  required String token,
  required String deviceType,
  String? userId,
}) async {
  final options = Options$Mutation$UploadFcmToken(
    variables: Variables$Mutation$UploadFcmToken(
      data: Input$FcmTokenUploadInput(
        token: token,
        deviceType:
            deviceType == 'ios' ? Enum$DeviceType.ios : Enum$DeviceType.android,
        userId: userId,
      ),
    ),
  );

  final result = await client.mutate$UploadFcmToken(options);

  if (result.hasException) {
    throw result.exception!;
  }

  if (result.parsedData == null) {
    throw Exception('Failed to upload FCM token: No data returned');
  }

  return result.parsedData!;
}
