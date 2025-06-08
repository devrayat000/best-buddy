// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unnecessary_cast, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../core/graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$AuthenticatedItem {
  Query$AuthenticatedItem({
    this.profile,
    this.$__typename = 'Query',
  });

  factory Query$AuthenticatedItem.fromJson(Map<String, dynamic> json) {
    final l$profile = json['profile'];
    final l$$__typename = json['__typename'];
    return Query$AuthenticatedItem(
      profile: l$profile == null
          ? null
          : Query$AuthenticatedItem$profile.fromJson(
              (l$profile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AuthenticatedItem$profile? profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$profile = profile;
    _resultData['profile'] = l$profile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$profile = profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$profile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AuthenticatedItem || runtimeType != other.runtimeType) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) {
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

extension UtilityExtension$Query$AuthenticatedItem on Query$AuthenticatedItem {
  CopyWith$Query$AuthenticatedItem<Query$AuthenticatedItem> get copyWith =>
      CopyWith$Query$AuthenticatedItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AuthenticatedItem<TRes> {
  factory CopyWith$Query$AuthenticatedItem(
    Query$AuthenticatedItem instance,
    TRes Function(Query$AuthenticatedItem) then,
  ) = _CopyWithImpl$Query$AuthenticatedItem;

  factory CopyWith$Query$AuthenticatedItem.stub(TRes res) =
      _CopyWithStubImpl$Query$AuthenticatedItem;

  TRes call({
    Query$AuthenticatedItem$profile? profile,
    String? $__typename,
  });
  CopyWith$Query$AuthenticatedItem$profile<TRes> get profile;
}

class _CopyWithImpl$Query$AuthenticatedItem<TRes>
    implements CopyWith$Query$AuthenticatedItem<TRes> {
  _CopyWithImpl$Query$AuthenticatedItem(
    this._instance,
    this._then,
  );

  final Query$AuthenticatedItem _instance;

  final TRes Function(Query$AuthenticatedItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AuthenticatedItem(
        profile: profile == _undefined
            ? _instance.profile
            : (profile as Query$AuthenticatedItem$profile?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AuthenticatedItem$profile<TRes> get profile {
    final local$profile = _instance.profile;
    return local$profile == null
        ? CopyWith$Query$AuthenticatedItem$profile.stub(_then(_instance))
        : CopyWith$Query$AuthenticatedItem$profile(
            local$profile, (e) => call(profile: e));
  }
}

class _CopyWithStubImpl$Query$AuthenticatedItem<TRes>
    implements CopyWith$Query$AuthenticatedItem<TRes> {
  _CopyWithStubImpl$Query$AuthenticatedItem(this._res);

  TRes _res;

  call({
    Query$AuthenticatedItem$profile? profile,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AuthenticatedItem$profile<TRes> get profile =>
      CopyWith$Query$AuthenticatedItem$profile.stub(_res);
}

const documentNodeQueryAuthenticatedItem = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AuthenticatedItem'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'authenticatedItem'),
        alias: NameNode(value: 'profile'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'User'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'role'),
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
Query$AuthenticatedItem _parserFn$Query$AuthenticatedItem(
        Map<String, dynamic> data) =>
    Query$AuthenticatedItem.fromJson(data);
typedef OnQueryComplete$Query$AuthenticatedItem = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$AuthenticatedItem?,
);

class Options$Query$AuthenticatedItem
    extends graphql.QueryOptions<Query$AuthenticatedItem> {
  Options$Query$AuthenticatedItem({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AuthenticatedItem? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$AuthenticatedItem? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$AuthenticatedItem(data),
                  ),
          onError: onError,
          document: documentNodeQueryAuthenticatedItem,
          parserFn: _parserFn$Query$AuthenticatedItem,
        );

  final OnQueryComplete$Query$AuthenticatedItem? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$AuthenticatedItem
    extends graphql.WatchQueryOptions<Query$AuthenticatedItem> {
  WatchOptions$Query$AuthenticatedItem({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AuthenticatedItem? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryAuthenticatedItem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AuthenticatedItem,
        );
}

class FetchMoreOptions$Query$AuthenticatedItem
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AuthenticatedItem(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAuthenticatedItem,
        );
}

extension ClientExtension$Query$AuthenticatedItem on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AuthenticatedItem>> query$AuthenticatedItem(
          [Options$Query$AuthenticatedItem? options]) async =>
      await this.query(options ?? Options$Query$AuthenticatedItem());
  graphql.ObservableQuery<Query$AuthenticatedItem> watchQuery$AuthenticatedItem(
          [WatchOptions$Query$AuthenticatedItem? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$AuthenticatedItem());
  void writeQuery$AuthenticatedItem({
    required Query$AuthenticatedItem data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryAuthenticatedItem)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AuthenticatedItem? readQuery$AuthenticatedItem(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAuthenticatedItem)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AuthenticatedItem.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$AuthenticatedItem>
    useQuery$AuthenticatedItem([Options$Query$AuthenticatedItem? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$AuthenticatedItem());
graphql.ObservableQuery<Query$AuthenticatedItem>
    useWatchQuery$AuthenticatedItem(
            [WatchOptions$Query$AuthenticatedItem? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$AuthenticatedItem());

class Query$AuthenticatedItem$Widget
    extends graphql_flutter.Query<Query$AuthenticatedItem> {
  Query$AuthenticatedItem$Widget({
    widgets.Key? key,
    Options$Query$AuthenticatedItem? options,
    required graphql_flutter.QueryBuilder<Query$AuthenticatedItem> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$AuthenticatedItem(),
          builder: builder,
        );
}

class Query$AuthenticatedItem$profile {
  Query$AuthenticatedItem$profile({required this.$__typename});

  factory Query$AuthenticatedItem$profile.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "User":
        return Query$AuthenticatedItem$profile$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$AuthenticatedItem$profile(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AuthenticatedItem$profile ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$AuthenticatedItem$profile
    on Query$AuthenticatedItem$profile {
  CopyWith$Query$AuthenticatedItem$profile<Query$AuthenticatedItem$profile>
      get copyWith => CopyWith$Query$AuthenticatedItem$profile(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$AuthenticatedItem$profile$$User) user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "User":
        return user(this as Query$AuthenticatedItem$profile$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$AuthenticatedItem$profile$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "User":
        if (user != null) {
          return user(this as Query$AuthenticatedItem$profile$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$AuthenticatedItem$profile<TRes> {
  factory CopyWith$Query$AuthenticatedItem$profile(
    Query$AuthenticatedItem$profile instance,
    TRes Function(Query$AuthenticatedItem$profile) then,
  ) = _CopyWithImpl$Query$AuthenticatedItem$profile;

  factory CopyWith$Query$AuthenticatedItem$profile.stub(TRes res) =
      _CopyWithStubImpl$Query$AuthenticatedItem$profile;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$AuthenticatedItem$profile<TRes>
    implements CopyWith$Query$AuthenticatedItem$profile<TRes> {
  _CopyWithImpl$Query$AuthenticatedItem$profile(
    this._instance,
    this._then,
  );

  final Query$AuthenticatedItem$profile _instance;

  final TRes Function(Query$AuthenticatedItem$profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$AuthenticatedItem$profile(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$AuthenticatedItem$profile<TRes>
    implements CopyWith$Query$AuthenticatedItem$profile<TRes> {
  _CopyWithStubImpl$Query$AuthenticatedItem$profile(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$AuthenticatedItem$profile$$User
    implements Query$AuthenticatedItem$profile {
  Query$AuthenticatedItem$profile$$User({
    required this.id,
    required this.name,
    required this.email,
    this.role,
    this.createdAt,
    this.$__typename = 'User',
  });

  factory Query$AuthenticatedItem$profile$$User.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$role = json['role'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$AuthenticatedItem$profile$$User(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      role: l$role == null
          ? null
          : fromJson$Enum$UserRoleType((l$role as String)),
      createdAt:
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final Enum$UserRoleType? role;

  final DateTime? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$role = role;
    _resultData['role'] =
        l$role == null ? null : toJson$Enum$UserRoleType(l$role);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$role = role;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$role,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AuthenticatedItem$profile$$User ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$AuthenticatedItem$profile$$User
    on Query$AuthenticatedItem$profile$$User {
  CopyWith$Query$AuthenticatedItem$profile$$User<
          Query$AuthenticatedItem$profile$$User>
      get copyWith => CopyWith$Query$AuthenticatedItem$profile$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AuthenticatedItem$profile$$User<TRes> {
  factory CopyWith$Query$AuthenticatedItem$profile$$User(
    Query$AuthenticatedItem$profile$$User instance,
    TRes Function(Query$AuthenticatedItem$profile$$User) then,
  ) = _CopyWithImpl$Query$AuthenticatedItem$profile$$User;

  factory CopyWith$Query$AuthenticatedItem$profile$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$AuthenticatedItem$profile$$User;

  TRes call({
    String? id,
    String? name,
    String? email,
    Enum$UserRoleType? role,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AuthenticatedItem$profile$$User<TRes>
    implements CopyWith$Query$AuthenticatedItem$profile$$User<TRes> {
  _CopyWithImpl$Query$AuthenticatedItem$profile$$User(
    this._instance,
    this._then,
  );

  final Query$AuthenticatedItem$profile$$User _instance;

  final TRes Function(Query$AuthenticatedItem$profile$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? role = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AuthenticatedItem$profile$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        role:
            role == _undefined ? _instance.role : (role as Enum$UserRoleType?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AuthenticatedItem$profile$$User<TRes>
    implements CopyWith$Query$AuthenticatedItem$profile$$User<TRes> {
  _CopyWithStubImpl$Query$AuthenticatedItem$profile$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? email,
    Enum$UserRoleType? role,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}
