// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unnecessary_cast, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../core/graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UploadFcmToken {
  factory Variables$Mutation$UploadFcmToken(
          {required Input$FcmTokenUploadInput data}) =>
      Variables$Mutation$UploadFcmToken._({
        r'data': data,
      });

  Variables$Mutation$UploadFcmToken._(this._$data);

  factory Variables$Mutation$UploadFcmToken.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$FcmTokenUploadInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$UploadFcmToken._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FcmTokenUploadInput get data =>
      (_$data['data'] as Input$FcmTokenUploadInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UploadFcmToken<Variables$Mutation$UploadFcmToken>
      get copyWith => CopyWith$Variables$Mutation$UploadFcmToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UploadFcmToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$UploadFcmToken<TRes> {
  factory CopyWith$Variables$Mutation$UploadFcmToken(
    Variables$Mutation$UploadFcmToken instance,
    TRes Function(Variables$Mutation$UploadFcmToken) then,
  ) = _CopyWithImpl$Variables$Mutation$UploadFcmToken;

  factory CopyWith$Variables$Mutation$UploadFcmToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UploadFcmToken;

  TRes call({Input$FcmTokenUploadInput? data});
}

class _CopyWithImpl$Variables$Mutation$UploadFcmToken<TRes>
    implements CopyWith$Variables$Mutation$UploadFcmToken<TRes> {
  _CopyWithImpl$Variables$Mutation$UploadFcmToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UploadFcmToken _instance;

  final TRes Function(Variables$Mutation$UploadFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$UploadFcmToken._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$FcmTokenUploadInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UploadFcmToken<TRes>
    implements CopyWith$Variables$Mutation$UploadFcmToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UploadFcmToken(this._res);

  TRes _res;

  call({Input$FcmTokenUploadInput? data}) => _res;
}

class Mutation$UploadFcmToken {
  Mutation$UploadFcmToken({
    this.uploadFcmToken,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UploadFcmToken.fromJson(Map<String, dynamic> json) {
    final l$uploadFcmToken = json['uploadFcmToken'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadFcmToken(
      uploadFcmToken: l$uploadFcmToken == null
          ? null
          : Mutation$UploadFcmToken$uploadFcmToken.fromJson(
              (l$uploadFcmToken as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UploadFcmToken$uploadFcmToken? uploadFcmToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uploadFcmToken = uploadFcmToken;
    _resultData['uploadFcmToken'] = l$uploadFcmToken?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uploadFcmToken = uploadFcmToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uploadFcmToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadFcmToken || runtimeType != other.runtimeType) {
      return false;
    }
    final l$uploadFcmToken = uploadFcmToken;
    final lOther$uploadFcmToken = other.uploadFcmToken;
    if (l$uploadFcmToken != lOther$uploadFcmToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UploadFcmToken on Mutation$UploadFcmToken {
  CopyWith$Mutation$UploadFcmToken<Mutation$UploadFcmToken> get copyWith =>
      CopyWith$Mutation$UploadFcmToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UploadFcmToken<TRes> {
  factory CopyWith$Mutation$UploadFcmToken(
    Mutation$UploadFcmToken instance,
    TRes Function(Mutation$UploadFcmToken) then,
  ) = _CopyWithImpl$Mutation$UploadFcmToken;

  factory CopyWith$Mutation$UploadFcmToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadFcmToken;

  TRes call({
    Mutation$UploadFcmToken$uploadFcmToken? uploadFcmToken,
    String? $__typename,
  });
  CopyWith$Mutation$UploadFcmToken$uploadFcmToken<TRes> get uploadFcmToken;
}

class _CopyWithImpl$Mutation$UploadFcmToken<TRes>
    implements CopyWith$Mutation$UploadFcmToken<TRes> {
  _CopyWithImpl$Mutation$UploadFcmToken(
    this._instance,
    this._then,
  );

  final Mutation$UploadFcmToken _instance;

  final TRes Function(Mutation$UploadFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uploadFcmToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UploadFcmToken(
        uploadFcmToken: uploadFcmToken == _undefined
            ? _instance.uploadFcmToken
            : (uploadFcmToken as Mutation$UploadFcmToken$uploadFcmToken?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UploadFcmToken$uploadFcmToken<TRes> get uploadFcmToken {
    final local$uploadFcmToken = _instance.uploadFcmToken;
    return local$uploadFcmToken == null
        ? CopyWith$Mutation$UploadFcmToken$uploadFcmToken.stub(_then(_instance))
        : CopyWith$Mutation$UploadFcmToken$uploadFcmToken(
            local$uploadFcmToken, (e) => call(uploadFcmToken: e));
  }
}

class _CopyWithStubImpl$Mutation$UploadFcmToken<TRes>
    implements CopyWith$Mutation$UploadFcmToken<TRes> {
  _CopyWithStubImpl$Mutation$UploadFcmToken(this._res);

  TRes _res;

  call({
    Mutation$UploadFcmToken$uploadFcmToken? uploadFcmToken,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UploadFcmToken$uploadFcmToken<TRes> get uploadFcmToken =>
      CopyWith$Mutation$UploadFcmToken$uploadFcmToken.stub(_res);
}

const documentNodeMutationUploadFcmToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UploadFcmToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'FcmTokenUploadInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'uploadFcmToken'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deviceType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UploadFcmToken _parserFn$Mutation$UploadFcmToken(
        Map<String, dynamic> data) =>
    Mutation$UploadFcmToken.fromJson(data);
typedef OnMutationCompleted$Mutation$UploadFcmToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UploadFcmToken?,
);

class Options$Mutation$UploadFcmToken
    extends graphql.MutationOptions<Mutation$UploadFcmToken> {
  Options$Mutation$UploadFcmToken({
    String? operationName,
    required Variables$Mutation$UploadFcmToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UploadFcmToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UploadFcmToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$UploadFcmToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UploadFcmToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUploadFcmToken,
          parserFn: _parserFn$Mutation$UploadFcmToken,
        );

  final OnMutationCompleted$Mutation$UploadFcmToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UploadFcmToken
    extends graphql.WatchQueryOptions<Mutation$UploadFcmToken> {
  WatchOptions$Mutation$UploadFcmToken({
    String? operationName,
    required Variables$Mutation$UploadFcmToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UploadFcmToken? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUploadFcmToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UploadFcmToken,
        );
}

extension ClientExtension$Mutation$UploadFcmToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UploadFcmToken>> mutate$UploadFcmToken(
          Options$Mutation$UploadFcmToken options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UploadFcmToken> watchMutation$UploadFcmToken(
          WatchOptions$Mutation$UploadFcmToken options) =>
      this.watchMutation(options);
}

class Mutation$UploadFcmToken$HookResult {
  Mutation$UploadFcmToken$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UploadFcmToken runMutation;

  final graphql.QueryResult<Mutation$UploadFcmToken> result;
}

Mutation$UploadFcmToken$HookResult useMutation$UploadFcmToken(
    [WidgetOptions$Mutation$UploadFcmToken? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UploadFcmToken());
  return Mutation$UploadFcmToken$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UploadFcmToken>
    useWatchMutation$UploadFcmToken(
            WatchOptions$Mutation$UploadFcmToken options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UploadFcmToken
    extends graphql.MutationOptions<Mutation$UploadFcmToken> {
  WidgetOptions$Mutation$UploadFcmToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UploadFcmToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UploadFcmToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$UploadFcmToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UploadFcmToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUploadFcmToken,
          parserFn: _parserFn$Mutation$UploadFcmToken,
        );

  final OnMutationCompleted$Mutation$UploadFcmToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UploadFcmToken
    = graphql.MultiSourceResult<Mutation$UploadFcmToken> Function(
  Variables$Mutation$UploadFcmToken, {
  Object? optimisticResult,
  Mutation$UploadFcmToken? typedOptimisticResult,
});
typedef Builder$Mutation$UploadFcmToken = widgets.Widget Function(
  RunMutation$Mutation$UploadFcmToken,
  graphql.QueryResult<Mutation$UploadFcmToken>?,
);

class Mutation$UploadFcmToken$Widget
    extends graphql_flutter.Mutation<Mutation$UploadFcmToken> {
  Mutation$UploadFcmToken$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UploadFcmToken? options,
    required Builder$Mutation$UploadFcmToken builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UploadFcmToken(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UploadFcmToken$uploadFcmToken {
  Mutation$UploadFcmToken$uploadFcmToken({
    required this.id,
    this.token,
    this.deviceType,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'FcmToken',
  });

  factory Mutation$UploadFcmToken$uploadFcmToken.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$token = json['token'];
    final l$deviceType = json['deviceType'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadFcmToken$uploadFcmToken(
      id: (l$id as String),
      token: (l$token as String?),
      deviceType: l$deviceType == null
          ? null
          : fromJson$Enum$FcmTokenDeviceTypeType((l$deviceType as String)),
      createdAt:
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String)),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? token;

  final Enum$FcmTokenDeviceTypeType? deviceType;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$deviceType = deviceType;
    _resultData['deviceType'] = l$deviceType == null
        ? null
        : toJson$Enum$FcmTokenDeviceTypeType(l$deviceType);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt?.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$token = token;
    final l$deviceType = deviceType;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$token,
      l$deviceType,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadFcmToken$uploadFcmToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$deviceType = deviceType;
    final lOther$deviceType = other.deviceType;
    if (l$deviceType != lOther$deviceType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UploadFcmToken$uploadFcmToken
    on Mutation$UploadFcmToken$uploadFcmToken {
  CopyWith$Mutation$UploadFcmToken$uploadFcmToken<
          Mutation$UploadFcmToken$uploadFcmToken>
      get copyWith => CopyWith$Mutation$UploadFcmToken$uploadFcmToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UploadFcmToken$uploadFcmToken<TRes> {
  factory CopyWith$Mutation$UploadFcmToken$uploadFcmToken(
    Mutation$UploadFcmToken$uploadFcmToken instance,
    TRes Function(Mutation$UploadFcmToken$uploadFcmToken) then,
  ) = _CopyWithImpl$Mutation$UploadFcmToken$uploadFcmToken;

  factory CopyWith$Mutation$UploadFcmToken$uploadFcmToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadFcmToken$uploadFcmToken;

  TRes call({
    String? id,
    String? token,
    Enum$FcmTokenDeviceTypeType? deviceType,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UploadFcmToken$uploadFcmToken<TRes>
    implements CopyWith$Mutation$UploadFcmToken$uploadFcmToken<TRes> {
  _CopyWithImpl$Mutation$UploadFcmToken$uploadFcmToken(
    this._instance,
    this._then,
  );

  final Mutation$UploadFcmToken$uploadFcmToken _instance;

  final TRes Function(Mutation$UploadFcmToken$uploadFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? token = _undefined,
    Object? deviceType = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UploadFcmToken$uploadFcmToken(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        token: token == _undefined ? _instance.token : (token as String?),
        deviceType: deviceType == _undefined
            ? _instance.deviceType
            : (deviceType as Enum$FcmTokenDeviceTypeType?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as DateTime?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UploadFcmToken$uploadFcmToken<TRes>
    implements CopyWith$Mutation$UploadFcmToken$uploadFcmToken<TRes> {
  _CopyWithStubImpl$Mutation$UploadFcmToken$uploadFcmToken(this._res);

  TRes _res;

  call({
    String? id,
    String? token,
    Enum$FcmTokenDeviceTypeType? deviceType,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;
}
