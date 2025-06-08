// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unnecessary_cast, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../core/graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Notices {
  factory Variables$Query$Notices({
    int? limit,
    required int offset,
    required List<Input$NoticeOrderByInput> orderBy,
  }) =>
      Variables$Query$Notices._({
        if (limit != null) r'limit': limit,
        r'offset': offset,
        r'orderBy': orderBy,
      });

  Variables$Query$Notices._(this._$data);

  factory Variables$Query$Notices.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    final l$offset = data['offset'];
    result$data['offset'] = (l$offset as int);
    final l$orderBy = data['orderBy'];
    result$data['orderBy'] = (l$orderBy as List<dynamic>)
        .map((e) =>
            Input$NoticeOrderByInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Variables$Query$Notices._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  int get offset => (_$data['offset'] as int);

  List<Input$NoticeOrderByInput> get orderBy =>
      (_$data['orderBy'] as List<Input$NoticeOrderByInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    final l$offset = offset;
    result$data['offset'] = l$offset;
    final l$orderBy = orderBy;
    result$data['orderBy'] = l$orderBy.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Query$Notices<Variables$Query$Notices> get copyWith =>
      CopyWith$Variables$Query$Notices(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Notices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (l$orderBy.length != lOther$orderBy.length) {
      return false;
    }
    for (int i = 0; i < l$orderBy.length; i++) {
      final l$orderBy$entry = l$orderBy[i];
      final lOther$orderBy$entry = lOther$orderBy[i];
      if (l$orderBy$entry != lOther$orderBy$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$offset = offset;
    final l$orderBy = orderBy;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      l$offset,
      Object.hashAll(l$orderBy.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Query$Notices<TRes> {
  factory CopyWith$Variables$Query$Notices(
    Variables$Query$Notices instance,
    TRes Function(Variables$Query$Notices) then,
  ) = _CopyWithImpl$Variables$Query$Notices;

  factory CopyWith$Variables$Query$Notices.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Notices;

  TRes call({
    int? limit,
    int? offset,
    List<Input$NoticeOrderByInput>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$Notices<TRes>
    implements CopyWith$Variables$Query$Notices<TRes> {
  _CopyWithImpl$Variables$Query$Notices(
    this._instance,
    this._then,
  );

  final Variables$Query$Notices _instance;

  final TRes Function(Variables$Query$Notices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? offset = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$Notices._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (offset != _undefined && offset != null) 'offset': (offset as int),
        if (orderBy != _undefined && orderBy != null)
          'orderBy': (orderBy as List<Input$NoticeOrderByInput>),
      }));
}

class _CopyWithStubImpl$Variables$Query$Notices<TRes>
    implements CopyWith$Variables$Query$Notices<TRes> {
  _CopyWithStubImpl$Variables$Query$Notices(this._res);

  TRes _res;

  call({
    int? limit,
    int? offset,
    List<Input$NoticeOrderByInput>? orderBy,
  }) =>
      _res;
}

class Query$Notices {
  Query$Notices({
    this.notices,
    this.noticesCount,
    this.$__typename = 'Query',
  });

  factory Query$Notices.fromJson(Map<String, dynamic> json) {
    final l$notices = json['notices'];
    final l$noticesCount = json['noticesCount'];
    final l$$__typename = json['__typename'];
    return Query$Notices(
      notices: (l$notices as List<dynamic>?)
          ?.map((e) =>
              Query$Notices$notices.fromJson((e as Map<String, dynamic>)))
          .toList(),
      noticesCount: (l$noticesCount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Notices$notices>? notices;

  final int? noticesCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notices = notices;
    _resultData['notices'] = l$notices?.map((e) => e.toJson()).toList();
    final l$noticesCount = noticesCount;
    _resultData['noticesCount'] = l$noticesCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notices = notices;
    final l$noticesCount = noticesCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notices == null ? null : Object.hashAll(l$notices.map((v) => v)),
      l$noticesCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$notices = notices;
    final lOther$notices = other.notices;
    if (l$notices != null && lOther$notices != null) {
      if (l$notices.length != lOther$notices.length) {
        return false;
      }
      for (int i = 0; i < l$notices.length; i++) {
        final l$notices$entry = l$notices[i];
        final lOther$notices$entry = lOther$notices[i];
        if (l$notices$entry != lOther$notices$entry) {
          return false;
        }
      }
    } else if (l$notices != lOther$notices) {
      return false;
    }
    final l$noticesCount = noticesCount;
    final lOther$noticesCount = other.noticesCount;
    if (l$noticesCount != lOther$noticesCount) {
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

extension UtilityExtension$Query$Notices on Query$Notices {
  CopyWith$Query$Notices<Query$Notices> get copyWith => CopyWith$Query$Notices(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Notices<TRes> {
  factory CopyWith$Query$Notices(
    Query$Notices instance,
    TRes Function(Query$Notices) then,
  ) = _CopyWithImpl$Query$Notices;

  factory CopyWith$Query$Notices.stub(TRes res) =
      _CopyWithStubImpl$Query$Notices;

  TRes call({
    List<Query$Notices$notices>? notices,
    int? noticesCount,
    String? $__typename,
  });
  TRes notices(
      Iterable<Query$Notices$notices>? Function(
              Iterable<CopyWith$Query$Notices$notices<Query$Notices$notices>>?)
          _fn);
}

class _CopyWithImpl$Query$Notices<TRes>
    implements CopyWith$Query$Notices<TRes> {
  _CopyWithImpl$Query$Notices(
    this._instance,
    this._then,
  );

  final Query$Notices _instance;

  final TRes Function(Query$Notices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notices = _undefined,
    Object? noticesCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notices(
        notices: notices == _undefined
            ? _instance.notices
            : (notices as List<Query$Notices$notices>?),
        noticesCount: noticesCount == _undefined
            ? _instance.noticesCount
            : (noticesCount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes notices(
          Iterable<Query$Notices$notices>? Function(
                  Iterable<
                      CopyWith$Query$Notices$notices<Query$Notices$notices>>?)
              _fn) =>
      call(
          notices:
              _fn(_instance.notices?.map((e) => CopyWith$Query$Notices$notices(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$Notices<TRes>
    implements CopyWith$Query$Notices<TRes> {
  _CopyWithStubImpl$Query$Notices(this._res);

  TRes _res;

  call({
    List<Query$Notices$notices>? notices,
    int? noticesCount,
    String? $__typename,
  }) =>
      _res;

  notices(_fn) => _res;
}

const documentNodeQueryNotices = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Notices'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NoticeOrderByInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'notices'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'take'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'skip'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'contentSummary'),
            alias: NameNode(value: 'content'),
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
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
        name: NameNode(value: 'noticesCount'),
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
]);
Query$Notices _parserFn$Query$Notices(Map<String, dynamic> data) =>
    Query$Notices.fromJson(data);
typedef OnQueryComplete$Query$Notices = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Notices?,
);

class Options$Query$Notices extends graphql.QueryOptions<Query$Notices> {
  Options$Query$Notices({
    String? operationName,
    required Variables$Query$Notices variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Notices? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Notices? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$Notices(data),
                  ),
          onError: onError,
          document: documentNodeQueryNotices,
          parserFn: _parserFn$Query$Notices,
        );

  final OnQueryComplete$Query$Notices? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Notices
    extends graphql.WatchQueryOptions<Query$Notices> {
  WatchOptions$Query$Notices({
    String? operationName,
    required Variables$Query$Notices variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Notices? typedOptimisticResult,
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
          document: documentNodeQueryNotices,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Notices,
        );
}

class FetchMoreOptions$Query$Notices extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Notices({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Notices variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryNotices,
        );
}

extension ClientExtension$Query$Notices on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Notices>> query$Notices(
          Options$Query$Notices options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Notices> watchQuery$Notices(
          WatchOptions$Query$Notices options) =>
      this.watchQuery(options);
  void writeQuery$Notices({
    required Query$Notices data,
    required Variables$Query$Notices variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryNotices),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Notices? readQuery$Notices({
    required Variables$Query$Notices variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryNotices),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Notices.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Notices> useQuery$Notices(
        Options$Query$Notices options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Notices> useWatchQuery$Notices(
        WatchOptions$Query$Notices options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Notices$Widget extends graphql_flutter.Query<Query$Notices> {
  Query$Notices$Widget({
    widgets.Key? key,
    required Options$Query$Notices options,
    required graphql_flutter.QueryBuilder<Query$Notices> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Notices$notices {
  Query$Notices$notices({
    required this.id,
    this.title,
    required this.content,
    this.createdAt,
    this.createdBy,
    this.$__typename = 'Notice',
  });

  factory Query$Notices$notices.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$content = json['content'];
    final l$createdAt = json['createdAt'];
    final l$createdBy = json['createdBy'];
    final l$$__typename = json['__typename'];
    return Query$Notices$notices(
      id: (l$id as String),
      title: (l$title as String?),
      content: (l$content as String),
      createdAt:
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String)),
      createdBy: l$createdBy == null
          ? null
          : Query$Notices$notices$createdBy.fromJson(
              (l$createdBy as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final String content;

  final DateTime? createdAt;

  final Query$Notices$notices$createdBy? createdBy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt?.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$content = content;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$content,
      l$createdAt,
      l$createdBy,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notices$notices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
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

extension UtilityExtension$Query$Notices$notices on Query$Notices$notices {
  CopyWith$Query$Notices$notices<Query$Notices$notices> get copyWith =>
      CopyWith$Query$Notices$notices(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Notices$notices<TRes> {
  factory CopyWith$Query$Notices$notices(
    Query$Notices$notices instance,
    TRes Function(Query$Notices$notices) then,
  ) = _CopyWithImpl$Query$Notices$notices;

  factory CopyWith$Query$Notices$notices.stub(TRes res) =
      _CopyWithStubImpl$Query$Notices$notices;

  TRes call({
    String? id,
    String? title,
    String? content,
    DateTime? createdAt,
    Query$Notices$notices$createdBy? createdBy,
    String? $__typename,
  });
  CopyWith$Query$Notices$notices$createdBy<TRes> get createdBy;
}

class _CopyWithImpl$Query$Notices$notices<TRes>
    implements CopyWith$Query$Notices$notices<TRes> {
  _CopyWithImpl$Query$Notices$notices(
    this._instance,
    this._then,
  );

  final Query$Notices$notices _instance;

  final TRes Function(Query$Notices$notices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? content = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notices$notices(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined ? _instance.title : (title as String?),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as DateTime?),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as Query$Notices$notices$createdBy?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notices$notices$createdBy<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Query$Notices$notices$createdBy.stub(_then(_instance))
        : CopyWith$Query$Notices$notices$createdBy(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Query$Notices$notices<TRes>
    implements CopyWith$Query$Notices$notices<TRes> {
  _CopyWithStubImpl$Query$Notices$notices(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? content,
    DateTime? createdAt,
    Query$Notices$notices$createdBy? createdBy,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notices$notices$createdBy<TRes> get createdBy =>
      CopyWith$Query$Notices$notices$createdBy.stub(_res);
}

class Query$Notices$notices$createdBy {
  Query$Notices$notices$createdBy({
    required this.name,
    this.role,
    this.$__typename = 'User',
  });

  factory Query$Notices$notices$createdBy.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Query$Notices$notices$createdBy(
      name: (l$name as String),
      role: l$role == null
          ? null
          : fromJson$Enum$UserRoleType((l$role as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Enum$UserRoleType? role;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$role = role;
    _resultData['role'] =
        l$role == null ? null : toJson$Enum$UserRoleType(l$role);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$role = role;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$role,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notices$notices$createdBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
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

extension UtilityExtension$Query$Notices$notices$createdBy
    on Query$Notices$notices$createdBy {
  CopyWith$Query$Notices$notices$createdBy<Query$Notices$notices$createdBy>
      get copyWith => CopyWith$Query$Notices$notices$createdBy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notices$notices$createdBy<TRes> {
  factory CopyWith$Query$Notices$notices$createdBy(
    Query$Notices$notices$createdBy instance,
    TRes Function(Query$Notices$notices$createdBy) then,
  ) = _CopyWithImpl$Query$Notices$notices$createdBy;

  factory CopyWith$Query$Notices$notices$createdBy.stub(TRes res) =
      _CopyWithStubImpl$Query$Notices$notices$createdBy;

  TRes call({
    String? name,
    Enum$UserRoleType? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notices$notices$createdBy<TRes>
    implements CopyWith$Query$Notices$notices$createdBy<TRes> {
  _CopyWithImpl$Query$Notices$notices$createdBy(
    this._instance,
    this._then,
  );

  final Query$Notices$notices$createdBy _instance;

  final TRes Function(Query$Notices$notices$createdBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notices$notices$createdBy(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        role:
            role == _undefined ? _instance.role : (role as Enum$UserRoleType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Notices$notices$createdBy<TRes>
    implements CopyWith$Query$Notices$notices$createdBy<TRes> {
  _CopyWithStubImpl$Query$Notices$notices$createdBy(this._res);

  TRes _res;

  call({
    String? name,
    Enum$UserRoleType? role,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Notice {
  factory Variables$Query$Notice({required String id}) =>
      Variables$Query$Notice._({
        r'id': id,
      });

  Variables$Query$Notice._(this._$data);

  factory Variables$Query$Notice.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Notice._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Notice<Variables$Query$Notice> get copyWith =>
      CopyWith$Variables$Query$Notice(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Notice || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$Notice<TRes> {
  factory CopyWith$Variables$Query$Notice(
    Variables$Query$Notice instance,
    TRes Function(Variables$Query$Notice) then,
  ) = _CopyWithImpl$Variables$Query$Notice;

  factory CopyWith$Variables$Query$Notice.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Notice;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Notice<TRes>
    implements CopyWith$Variables$Query$Notice<TRes> {
  _CopyWithImpl$Variables$Query$Notice(
    this._instance,
    this._then,
  );

  final Variables$Query$Notice _instance;

  final TRes Function(Variables$Query$Notice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Notice._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Notice<TRes>
    implements CopyWith$Variables$Query$Notice<TRes> {
  _CopyWithStubImpl$Variables$Query$Notice(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Notice {
  Query$Notice({
    this.notice,
    this.$__typename = 'Query',
  });

  factory Query$Notice.fromJson(Map<String, dynamic> json) {
    final l$notice = json['notice'];
    final l$$__typename = json['__typename'];
    return Query$Notice(
      notice: l$notice == null
          ? null
          : Query$Notice$notice.fromJson((l$notice as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Notice$notice? notice;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notice = notice;
    _resultData['notice'] = l$notice?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notice = notice;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notice,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notice || runtimeType != other.runtimeType) {
      return false;
    }
    final l$notice = notice;
    final lOther$notice = other.notice;
    if (l$notice != lOther$notice) {
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

extension UtilityExtension$Query$Notice on Query$Notice {
  CopyWith$Query$Notice<Query$Notice> get copyWith => CopyWith$Query$Notice(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Notice<TRes> {
  factory CopyWith$Query$Notice(
    Query$Notice instance,
    TRes Function(Query$Notice) then,
  ) = _CopyWithImpl$Query$Notice;

  factory CopyWith$Query$Notice.stub(TRes res) = _CopyWithStubImpl$Query$Notice;

  TRes call({
    Query$Notice$notice? notice,
    String? $__typename,
  });
  CopyWith$Query$Notice$notice<TRes> get notice;
}

class _CopyWithImpl$Query$Notice<TRes> implements CopyWith$Query$Notice<TRes> {
  _CopyWithImpl$Query$Notice(
    this._instance,
    this._then,
  );

  final Query$Notice _instance;

  final TRes Function(Query$Notice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notice = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notice(
        notice: notice == _undefined
            ? _instance.notice
            : (notice as Query$Notice$notice?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notice$notice<TRes> get notice {
    final local$notice = _instance.notice;
    return local$notice == null
        ? CopyWith$Query$Notice$notice.stub(_then(_instance))
        : CopyWith$Query$Notice$notice(local$notice, (e) => call(notice: e));
  }
}

class _CopyWithStubImpl$Query$Notice<TRes>
    implements CopyWith$Query$Notice<TRes> {
  _CopyWithStubImpl$Query$Notice(this._res);

  TRes _res;

  call({
    Query$Notice$notice? notice,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notice$notice<TRes> get notice =>
      CopyWith$Query$Notice$notice.stub(_res);
}

const documentNodeQueryNotice = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Notice'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'notice'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              )
            ]),
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'content'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'document'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'hydrateRelationships'),
                    value: BooleanValueNode(value: false),
                  )
                ],
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
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
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
]);
Query$Notice _parserFn$Query$Notice(Map<String, dynamic> data) =>
    Query$Notice.fromJson(data);
typedef OnQueryComplete$Query$Notice = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Notice?,
);

class Options$Query$Notice extends graphql.QueryOptions<Query$Notice> {
  Options$Query$Notice({
    String? operationName,
    required Variables$Query$Notice variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Notice? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Notice? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$Notice(data),
                  ),
          onError: onError,
          document: documentNodeQueryNotice,
          parserFn: _parserFn$Query$Notice,
        );

  final OnQueryComplete$Query$Notice? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Notice
    extends graphql.WatchQueryOptions<Query$Notice> {
  WatchOptions$Query$Notice({
    String? operationName,
    required Variables$Query$Notice variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Notice? typedOptimisticResult,
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
          document: documentNodeQueryNotice,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Notice,
        );
}

class FetchMoreOptions$Query$Notice extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Notice({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Notice variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryNotice,
        );
}

extension ClientExtension$Query$Notice on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Notice>> query$Notice(
          Options$Query$Notice options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Notice> watchQuery$Notice(
          WatchOptions$Query$Notice options) =>
      this.watchQuery(options);
  void writeQuery$Notice({
    required Query$Notice data,
    required Variables$Query$Notice variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryNotice),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Notice? readQuery$Notice({
    required Variables$Query$Notice variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryNotice),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Notice.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Notice> useQuery$Notice(
        Options$Query$Notice options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Notice> useWatchQuery$Notice(
        WatchOptions$Query$Notice options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Notice$Widget extends graphql_flutter.Query<Query$Notice> {
  Query$Notice$Widget({
    widgets.Key? key,
    required Options$Query$Notice options,
    required graphql_flutter.QueryBuilder<Query$Notice> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Notice$notice {
  Query$Notice$notice({
    required this.id,
    this.title,
    this.content,
    this.createdBy,
    this.createdAt,
    this.$__typename = 'Notice',
  });

  factory Query$Notice$notice.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$content = json['content'];
    final l$createdBy = json['createdBy'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notice$notice(
      id: (l$id as String),
      title: (l$title as String?),
      content: l$content == null
          ? null
          : Query$Notice$notice$content.fromJson(
              (l$content as Map<String, dynamic>)),
      createdBy: l$createdBy == null
          ? null
          : Query$Notice$notice$createdBy.fromJson(
              (l$createdBy as Map<String, dynamic>)),
      createdAt:
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final Query$Notice$notice$content? content;

  final Query$Notice$notice$createdBy? createdBy;

  final DateTime? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$content = content;
    _resultData['content'] = l$content?.toJson();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$content = content;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$content,
      l$createdBy,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notice$notice || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
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

extension UtilityExtension$Query$Notice$notice on Query$Notice$notice {
  CopyWith$Query$Notice$notice<Query$Notice$notice> get copyWith =>
      CopyWith$Query$Notice$notice(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Notice$notice<TRes> {
  factory CopyWith$Query$Notice$notice(
    Query$Notice$notice instance,
    TRes Function(Query$Notice$notice) then,
  ) = _CopyWithImpl$Query$Notice$notice;

  factory CopyWith$Query$Notice$notice.stub(TRes res) =
      _CopyWithStubImpl$Query$Notice$notice;

  TRes call({
    String? id,
    String? title,
    Query$Notice$notice$content? content,
    Query$Notice$notice$createdBy? createdBy,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Query$Notice$notice$content<TRes> get content;
  CopyWith$Query$Notice$notice$createdBy<TRes> get createdBy;
}

class _CopyWithImpl$Query$Notice$notice<TRes>
    implements CopyWith$Query$Notice$notice<TRes> {
  _CopyWithImpl$Query$Notice$notice(
    this._instance,
    this._then,
  );

  final Query$Notice$notice _instance;

  final TRes Function(Query$Notice$notice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? content = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notice$notice(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined ? _instance.title : (title as String?),
        content: content == _undefined
            ? _instance.content
            : (content as Query$Notice$notice$content?),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as Query$Notice$notice$createdBy?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notice$notice$content<TRes> get content {
    final local$content = _instance.content;
    return local$content == null
        ? CopyWith$Query$Notice$notice$content.stub(_then(_instance))
        : CopyWith$Query$Notice$notice$content(
            local$content, (e) => call(content: e));
  }

  CopyWith$Query$Notice$notice$createdBy<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Query$Notice$notice$createdBy.stub(_then(_instance))
        : CopyWith$Query$Notice$notice$createdBy(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Query$Notice$notice<TRes>
    implements CopyWith$Query$Notice$notice<TRes> {
  _CopyWithStubImpl$Query$Notice$notice(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Query$Notice$notice$content? content,
    Query$Notice$notice$createdBy? createdBy,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notice$notice$content<TRes> get content =>
      CopyWith$Query$Notice$notice$content.stub(_res);

  CopyWith$Query$Notice$notice$createdBy<TRes> get createdBy =>
      CopyWith$Query$Notice$notice$createdBy.stub(_res);
}

class Query$Notice$notice$content {
  Query$Notice$notice$content({
    required this.document,
    this.$__typename = 'Notice_content_Document',
  });

  factory Query$Notice$notice$content.fromJson(Map<String, dynamic> json) {
    final l$document = json['document'];
    final l$$__typename = json['__typename'];
    return Query$Notice$notice$content(
      document: (l$document as Object),
      $__typename: (l$$__typename as String),
    );
  }

  final Object document;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$document = document;
    _resultData['document'] = l$document;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$document = document;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$document,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notice$notice$content ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (l$document != lOther$document) {
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

extension UtilityExtension$Query$Notice$notice$content
    on Query$Notice$notice$content {
  CopyWith$Query$Notice$notice$content<Query$Notice$notice$content>
      get copyWith => CopyWith$Query$Notice$notice$content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notice$notice$content<TRes> {
  factory CopyWith$Query$Notice$notice$content(
    Query$Notice$notice$content instance,
    TRes Function(Query$Notice$notice$content) then,
  ) = _CopyWithImpl$Query$Notice$notice$content;

  factory CopyWith$Query$Notice$notice$content.stub(TRes res) =
      _CopyWithStubImpl$Query$Notice$notice$content;

  TRes call({
    Object? document,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notice$notice$content<TRes>
    implements CopyWith$Query$Notice$notice$content<TRes> {
  _CopyWithImpl$Query$Notice$notice$content(
    this._instance,
    this._then,
  );

  final Query$Notice$notice$content _instance;

  final TRes Function(Query$Notice$notice$content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? document = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notice$notice$content(
        document: document == _undefined || document == null
            ? _instance.document
            : (document as Object),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Notice$notice$content<TRes>
    implements CopyWith$Query$Notice$notice$content<TRes> {
  _CopyWithStubImpl$Query$Notice$notice$content(this._res);

  TRes _res;

  call({
    Object? document,
    String? $__typename,
  }) =>
      _res;
}

class Query$Notice$notice$createdBy {
  Query$Notice$notice$createdBy({
    required this.name,
    this.role,
    this.$__typename = 'User',
  });

  factory Query$Notice$notice$createdBy.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Query$Notice$notice$createdBy(
      name: (l$name as String),
      role: l$role == null
          ? null
          : fromJson$Enum$UserRoleType((l$role as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Enum$UserRoleType? role;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$role = role;
    _resultData['role'] =
        l$role == null ? null : toJson$Enum$UserRoleType(l$role);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$role = role;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$role,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notice$notice$createdBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
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

extension UtilityExtension$Query$Notice$notice$createdBy
    on Query$Notice$notice$createdBy {
  CopyWith$Query$Notice$notice$createdBy<Query$Notice$notice$createdBy>
      get copyWith => CopyWith$Query$Notice$notice$createdBy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notice$notice$createdBy<TRes> {
  factory CopyWith$Query$Notice$notice$createdBy(
    Query$Notice$notice$createdBy instance,
    TRes Function(Query$Notice$notice$createdBy) then,
  ) = _CopyWithImpl$Query$Notice$notice$createdBy;

  factory CopyWith$Query$Notice$notice$createdBy.stub(TRes res) =
      _CopyWithStubImpl$Query$Notice$notice$createdBy;

  TRes call({
    String? name,
    Enum$UserRoleType? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notice$notice$createdBy<TRes>
    implements CopyWith$Query$Notice$notice$createdBy<TRes> {
  _CopyWithImpl$Query$Notice$notice$createdBy(
    this._instance,
    this._then,
  );

  final Query$Notice$notice$createdBy _instance;

  final TRes Function(Query$Notice$notice$createdBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notice$notice$createdBy(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        role:
            role == _undefined ? _instance.role : (role as Enum$UserRoleType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Notice$notice$createdBy<TRes>
    implements CopyWith$Query$Notice$notice$createdBy<TRes> {
  _CopyWithStubImpl$Query$Notice$notice$createdBy(this._res);

  TRes _res;

  call({
    String? name,
    Enum$UserRoleType? role,
    String? $__typename,
  }) =>
      _res;
}
