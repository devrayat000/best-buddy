// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../core/graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ClassTests {
  factory Variables$Query$ClassTests({
    int? limit,
    required int offset,
    required List<Input$ClassTestOrderByInput> orderBy,
  }) =>
      Variables$Query$ClassTests._({
        if (limit != null) r'limit': limit,
        r'offset': offset,
        r'orderBy': orderBy,
      });

  Variables$Query$ClassTests._(this._$data);

  factory Variables$Query$ClassTests.fromJson(Map<String, dynamic> data) {
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
            Input$ClassTestOrderByInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Variables$Query$ClassTests._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  int get offset => (_$data['offset'] as int);

  List<Input$ClassTestOrderByInput> get orderBy =>
      (_$data['orderBy'] as List<Input$ClassTestOrderByInput>);

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

  CopyWith$Variables$Query$ClassTests<Variables$Query$ClassTests>
      get copyWith => CopyWith$Variables$Query$ClassTests(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ClassTests ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$ClassTests<TRes> {
  factory CopyWith$Variables$Query$ClassTests(
    Variables$Query$ClassTests instance,
    TRes Function(Variables$Query$ClassTests) then,
  ) = _CopyWithImpl$Variables$Query$ClassTests;

  factory CopyWith$Variables$Query$ClassTests.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ClassTests;

  TRes call({
    int? limit,
    int? offset,
    List<Input$ClassTestOrderByInput>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$ClassTests<TRes>
    implements CopyWith$Variables$Query$ClassTests<TRes> {
  _CopyWithImpl$Variables$Query$ClassTests(
    this._instance,
    this._then,
  );

  final Variables$Query$ClassTests _instance;

  final TRes Function(Variables$Query$ClassTests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? offset = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$ClassTests._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (offset != _undefined && offset != null) 'offset': (offset as int),
        if (orderBy != _undefined && orderBy != null)
          'orderBy': (orderBy as List<Input$ClassTestOrderByInput>),
      }));
}

class _CopyWithStubImpl$Variables$Query$ClassTests<TRes>
    implements CopyWith$Variables$Query$ClassTests<TRes> {
  _CopyWithStubImpl$Variables$Query$ClassTests(this._res);

  TRes _res;

  call({
    int? limit,
    int? offset,
    List<Input$ClassTestOrderByInput>? orderBy,
  }) =>
      _res;
}

class Query$ClassTests {
  Query$ClassTests({
    this.classTests,
    this.classTestsCount,
    this.$__typename = 'Query',
  });

  factory Query$ClassTests.fromJson(Map<String, dynamic> json) {
    final l$classTests = json['classTests'];
    final l$classTestsCount = json['classTestsCount'];
    final l$$__typename = json['__typename'];
    return Query$ClassTests(
      classTests: (l$classTests as List<dynamic>?)
          ?.map((e) =>
              Query$ClassTests$classTests.fromJson((e as Map<String, dynamic>)))
          .toList(),
      classTestsCount: (l$classTestsCount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ClassTests$classTests>? classTests;

  final int? classTestsCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classTests = classTests;
    _resultData['classTests'] = l$classTests?.map((e) => e.toJson()).toList();
    final l$classTestsCount = classTestsCount;
    _resultData['classTestsCount'] = l$classTestsCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classTests = classTests;
    final l$classTestsCount = classTestsCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$classTests == null ? null : Object.hashAll(l$classTests.map((v) => v)),
      l$classTestsCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ClassTests || runtimeType != other.runtimeType) {
      return false;
    }
    final l$classTests = classTests;
    final lOther$classTests = other.classTests;
    if (l$classTests != null && lOther$classTests != null) {
      if (l$classTests.length != lOther$classTests.length) {
        return false;
      }
      for (int i = 0; i < l$classTests.length; i++) {
        final l$classTests$entry = l$classTests[i];
        final lOther$classTests$entry = lOther$classTests[i];
        if (l$classTests$entry != lOther$classTests$entry) {
          return false;
        }
      }
    } else if (l$classTests != lOther$classTests) {
      return false;
    }
    final l$classTestsCount = classTestsCount;
    final lOther$classTestsCount = other.classTestsCount;
    if (l$classTestsCount != lOther$classTestsCount) {
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

extension UtilityExtension$Query$ClassTests on Query$ClassTests {
  CopyWith$Query$ClassTests<Query$ClassTests> get copyWith =>
      CopyWith$Query$ClassTests(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ClassTests<TRes> {
  factory CopyWith$Query$ClassTests(
    Query$ClassTests instance,
    TRes Function(Query$ClassTests) then,
  ) = _CopyWithImpl$Query$ClassTests;

  factory CopyWith$Query$ClassTests.stub(TRes res) =
      _CopyWithStubImpl$Query$ClassTests;

  TRes call({
    List<Query$ClassTests$classTests>? classTests,
    int? classTestsCount,
    String? $__typename,
  });
  TRes classTests(
      Iterable<Query$ClassTests$classTests>? Function(
              Iterable<
                  CopyWith$Query$ClassTests$classTests<
                      Query$ClassTests$classTests>>?)
          _fn);
}

class _CopyWithImpl$Query$ClassTests<TRes>
    implements CopyWith$Query$ClassTests<TRes> {
  _CopyWithImpl$Query$ClassTests(
    this._instance,
    this._then,
  );

  final Query$ClassTests _instance;

  final TRes Function(Query$ClassTests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? classTests = _undefined,
    Object? classTestsCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClassTests(
        classTests: classTests == _undefined
            ? _instance.classTests
            : (classTests as List<Query$ClassTests$classTests>?),
        classTestsCount: classTestsCount == _undefined
            ? _instance.classTestsCount
            : (classTestsCount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes classTests(
          Iterable<Query$ClassTests$classTests>? Function(
                  Iterable<
                      CopyWith$Query$ClassTests$classTests<
                          Query$ClassTests$classTests>>?)
              _fn) =>
      call(
          classTests: _fn(_instance.classTests
              ?.map((e) => CopyWith$Query$ClassTests$classTests(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$ClassTests<TRes>
    implements CopyWith$Query$ClassTests<TRes> {
  _CopyWithStubImpl$Query$ClassTests(this._res);

  TRes _res;

  call({
    List<Query$ClassTests$classTests>? classTests,
    int? classTestsCount,
    String? $__typename,
  }) =>
      _res;

  classTests(_fn) => _res;
}

const documentNodeQueryClassTests = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ClassTests'),
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
            name: NameNode(value: 'ClassTestOrderByInput'),
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
        name: NameNode(value: 'classTests'),
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
            name: NameNode(value: 'datetime'),
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
        name: NameNode(value: 'classTestsCount'),
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
Query$ClassTests _parserFn$Query$ClassTests(Map<String, dynamic> data) =>
    Query$ClassTests.fromJson(data);
typedef OnQueryComplete$Query$ClassTests = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ClassTests?,
);

class Options$Query$ClassTests extends graphql.QueryOptions<Query$ClassTests> {
  Options$Query$ClassTests({
    String? operationName,
    required Variables$Query$ClassTests variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ClassTests? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ClassTests? onComplete,
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
                    data == null ? null : _parserFn$Query$ClassTests(data),
                  ),
          onError: onError,
          document: documentNodeQueryClassTests,
          parserFn: _parserFn$Query$ClassTests,
        );

  final OnQueryComplete$Query$ClassTests? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ClassTests
    extends graphql.WatchQueryOptions<Query$ClassTests> {
  WatchOptions$Query$ClassTests({
    String? operationName,
    required Variables$Query$ClassTests variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ClassTests? typedOptimisticResult,
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
          document: documentNodeQueryClassTests,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ClassTests,
        );
}

class FetchMoreOptions$Query$ClassTests extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ClassTests({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ClassTests variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryClassTests,
        );
}

extension ClientExtension$Query$ClassTests on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ClassTests>> query$ClassTests(
          Options$Query$ClassTests options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ClassTests> watchQuery$ClassTests(
          WatchOptions$Query$ClassTests options) =>
      this.watchQuery(options);
  void writeQuery$ClassTests({
    required Query$ClassTests data,
    required Variables$Query$ClassTests variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryClassTests),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ClassTests? readQuery$ClassTests({
    required Variables$Query$ClassTests variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryClassTests),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ClassTests.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ClassTests> useQuery$ClassTests(
        Options$Query$ClassTests options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ClassTests> useWatchQuery$ClassTests(
        WatchOptions$Query$ClassTests options) =>
    graphql_flutter.useWatchQuery(options);

class Query$ClassTests$Widget extends graphql_flutter.Query<Query$ClassTests> {
  Query$ClassTests$Widget({
    widgets.Key? key,
    required Options$Query$ClassTests options,
    required graphql_flutter.QueryBuilder<Query$ClassTests> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$ClassTests$classTests {
  Query$ClassTests$classTests({
    required this.id,
    required this.title,
    required this.content,
    required this.datetime,
    this.createdBy,
    this.createdAt,
    this.$__typename = 'ClassTest',
  });

  factory Query$ClassTests$classTests.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$content = json['content'];
    final l$datetime = json['datetime'];
    final l$createdBy = json['createdBy'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$ClassTests$classTests(
      id: (l$id as String),
      title: (l$title as String),
      content: (l$content as String),
      datetime: DateTime.parse((l$datetime as String)),
      createdBy: l$createdBy == null
          ? null
          : Query$ClassTests$classTests$createdBy.fromJson(
              (l$createdBy as Map<String, dynamic>)),
      createdAt:
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String content;

  final DateTime datetime;

  final Query$ClassTests$classTests$createdBy? createdBy;

  final DateTime? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$datetime = datetime;
    _resultData['datetime'] = l$datetime.toIso8601String();
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
    final l$datetime = datetime;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$content,
      l$datetime,
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
    if (other is! Query$ClassTests$classTests ||
        runtimeType != other.runtimeType) {
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
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (l$datetime != lOther$datetime) {
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

extension UtilityExtension$Query$ClassTests$classTests
    on Query$ClassTests$classTests {
  CopyWith$Query$ClassTests$classTests<Query$ClassTests$classTests>
      get copyWith => CopyWith$Query$ClassTests$classTests(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ClassTests$classTests<TRes> {
  factory CopyWith$Query$ClassTests$classTests(
    Query$ClassTests$classTests instance,
    TRes Function(Query$ClassTests$classTests) then,
  ) = _CopyWithImpl$Query$ClassTests$classTests;

  factory CopyWith$Query$ClassTests$classTests.stub(TRes res) =
      _CopyWithStubImpl$Query$ClassTests$classTests;

  TRes call({
    String? id,
    String? title,
    String? content,
    DateTime? datetime,
    Query$ClassTests$classTests$createdBy? createdBy,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Query$ClassTests$classTests$createdBy<TRes> get createdBy;
}

class _CopyWithImpl$Query$ClassTests$classTests<TRes>
    implements CopyWith$Query$ClassTests$classTests<TRes> {
  _CopyWithImpl$Query$ClassTests$classTests(
    this._instance,
    this._then,
  );

  final Query$ClassTests$classTests _instance;

  final TRes Function(Query$ClassTests$classTests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? content = _undefined,
    Object? datetime = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClassTests$classTests(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        datetime: datetime == _undefined || datetime == null
            ? _instance.datetime
            : (datetime as DateTime),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as Query$ClassTests$classTests$createdBy?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ClassTests$classTests$createdBy<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Query$ClassTests$classTests$createdBy.stub(_then(_instance))
        : CopyWith$Query$ClassTests$classTests$createdBy(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Query$ClassTests$classTests<TRes>
    implements CopyWith$Query$ClassTests$classTests<TRes> {
  _CopyWithStubImpl$Query$ClassTests$classTests(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? content,
    DateTime? datetime,
    Query$ClassTests$classTests$createdBy? createdBy,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ClassTests$classTests$createdBy<TRes> get createdBy =>
      CopyWith$Query$ClassTests$classTests$createdBy.stub(_res);
}

class Query$ClassTests$classTests$createdBy {
  Query$ClassTests$classTests$createdBy({
    required this.name,
    this.role,
    this.$__typename = 'User',
  });

  factory Query$ClassTests$classTests$createdBy.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Query$ClassTests$classTests$createdBy(
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
    if (other is! Query$ClassTests$classTests$createdBy ||
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

extension UtilityExtension$Query$ClassTests$classTests$createdBy
    on Query$ClassTests$classTests$createdBy {
  CopyWith$Query$ClassTests$classTests$createdBy<
          Query$ClassTests$classTests$createdBy>
      get copyWith => CopyWith$Query$ClassTests$classTests$createdBy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ClassTests$classTests$createdBy<TRes> {
  factory CopyWith$Query$ClassTests$classTests$createdBy(
    Query$ClassTests$classTests$createdBy instance,
    TRes Function(Query$ClassTests$classTests$createdBy) then,
  ) = _CopyWithImpl$Query$ClassTests$classTests$createdBy;

  factory CopyWith$Query$ClassTests$classTests$createdBy.stub(TRes res) =
      _CopyWithStubImpl$Query$ClassTests$classTests$createdBy;

  TRes call({
    String? name,
    Enum$UserRoleType? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ClassTests$classTests$createdBy<TRes>
    implements CopyWith$Query$ClassTests$classTests$createdBy<TRes> {
  _CopyWithImpl$Query$ClassTests$classTests$createdBy(
    this._instance,
    this._then,
  );

  final Query$ClassTests$classTests$createdBy _instance;

  final TRes Function(Query$ClassTests$classTests$createdBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClassTests$classTests$createdBy(
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

class _CopyWithStubImpl$Query$ClassTests$classTests$createdBy<TRes>
    implements CopyWith$Query$ClassTests$classTests$createdBy<TRes> {
  _CopyWithStubImpl$Query$ClassTests$classTests$createdBy(this._res);

  TRes _res;

  call({
    String? name,
    Enum$UserRoleType? role,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$ClassTest {
  factory Variables$Query$ClassTest({required String id}) =>
      Variables$Query$ClassTest._({
        r'id': id,
      });

  Variables$Query$ClassTest._(this._$data);

  factory Variables$Query$ClassTest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$ClassTest._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$ClassTest<Variables$Query$ClassTest> get copyWith =>
      CopyWith$Variables$Query$ClassTest(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ClassTest ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$ClassTest<TRes> {
  factory CopyWith$Variables$Query$ClassTest(
    Variables$Query$ClassTest instance,
    TRes Function(Variables$Query$ClassTest) then,
  ) = _CopyWithImpl$Variables$Query$ClassTest;

  factory CopyWith$Variables$Query$ClassTest.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ClassTest;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$ClassTest<TRes>
    implements CopyWith$Variables$Query$ClassTest<TRes> {
  _CopyWithImpl$Variables$Query$ClassTest(
    this._instance,
    this._then,
  );

  final Variables$Query$ClassTest _instance;

  final TRes Function(Variables$Query$ClassTest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$ClassTest._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ClassTest<TRes>
    implements CopyWith$Variables$Query$ClassTest<TRes> {
  _CopyWithStubImpl$Variables$Query$ClassTest(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$ClassTest {
  Query$ClassTest({
    this.classTest,
    this.$__typename = 'Query',
  });

  factory Query$ClassTest.fromJson(Map<String, dynamic> json) {
    final l$classTest = json['classTest'];
    final l$$__typename = json['__typename'];
    return Query$ClassTest(
      classTest: l$classTest == null
          ? null
          : Query$ClassTest$classTest.fromJson(
              (l$classTest as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ClassTest$classTest? classTest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classTest = classTest;
    _resultData['classTest'] = l$classTest?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classTest = classTest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$classTest,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ClassTest || runtimeType != other.runtimeType) {
      return false;
    }
    final l$classTest = classTest;
    final lOther$classTest = other.classTest;
    if (l$classTest != lOther$classTest) {
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

extension UtilityExtension$Query$ClassTest on Query$ClassTest {
  CopyWith$Query$ClassTest<Query$ClassTest> get copyWith =>
      CopyWith$Query$ClassTest(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ClassTest<TRes> {
  factory CopyWith$Query$ClassTest(
    Query$ClassTest instance,
    TRes Function(Query$ClassTest) then,
  ) = _CopyWithImpl$Query$ClassTest;

  factory CopyWith$Query$ClassTest.stub(TRes res) =
      _CopyWithStubImpl$Query$ClassTest;

  TRes call({
    Query$ClassTest$classTest? classTest,
    String? $__typename,
  });
  CopyWith$Query$ClassTest$classTest<TRes> get classTest;
}

class _CopyWithImpl$Query$ClassTest<TRes>
    implements CopyWith$Query$ClassTest<TRes> {
  _CopyWithImpl$Query$ClassTest(
    this._instance,
    this._then,
  );

  final Query$ClassTest _instance;

  final TRes Function(Query$ClassTest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? classTest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClassTest(
        classTest: classTest == _undefined
            ? _instance.classTest
            : (classTest as Query$ClassTest$classTest?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ClassTest$classTest<TRes> get classTest {
    final local$classTest = _instance.classTest;
    return local$classTest == null
        ? CopyWith$Query$ClassTest$classTest.stub(_then(_instance))
        : CopyWith$Query$ClassTest$classTest(
            local$classTest, (e) => call(classTest: e));
  }
}

class _CopyWithStubImpl$Query$ClassTest<TRes>
    implements CopyWith$Query$ClassTest<TRes> {
  _CopyWithStubImpl$Query$ClassTest(this._res);

  TRes _res;

  call({
    Query$ClassTest$classTest? classTest,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ClassTest$classTest<TRes> get classTest =>
      CopyWith$Query$ClassTest$classTest.stub(_res);
}

const documentNodeQueryClassTest = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ClassTest'),
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
        name: NameNode(value: 'classTest'),
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
            name: NameNode(value: 'datetime'),
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
]);
Query$ClassTest _parserFn$Query$ClassTest(Map<String, dynamic> data) =>
    Query$ClassTest.fromJson(data);
typedef OnQueryComplete$Query$ClassTest = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ClassTest?,
);

class Options$Query$ClassTest extends graphql.QueryOptions<Query$ClassTest> {
  Options$Query$ClassTest({
    String? operationName,
    required Variables$Query$ClassTest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ClassTest? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ClassTest? onComplete,
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
                    data == null ? null : _parserFn$Query$ClassTest(data),
                  ),
          onError: onError,
          document: documentNodeQueryClassTest,
          parserFn: _parserFn$Query$ClassTest,
        );

  final OnQueryComplete$Query$ClassTest? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ClassTest
    extends graphql.WatchQueryOptions<Query$ClassTest> {
  WatchOptions$Query$ClassTest({
    String? operationName,
    required Variables$Query$ClassTest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ClassTest? typedOptimisticResult,
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
          document: documentNodeQueryClassTest,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ClassTest,
        );
}

class FetchMoreOptions$Query$ClassTest extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ClassTest({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ClassTest variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryClassTest,
        );
}

extension ClientExtension$Query$ClassTest on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ClassTest>> query$ClassTest(
          Options$Query$ClassTest options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ClassTest> watchQuery$ClassTest(
          WatchOptions$Query$ClassTest options) =>
      this.watchQuery(options);
  void writeQuery$ClassTest({
    required Query$ClassTest data,
    required Variables$Query$ClassTest variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryClassTest),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ClassTest? readQuery$ClassTest({
    required Variables$Query$ClassTest variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryClassTest),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ClassTest.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ClassTest> useQuery$ClassTest(
        Options$Query$ClassTest options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ClassTest> useWatchQuery$ClassTest(
        WatchOptions$Query$ClassTest options) =>
    graphql_flutter.useWatchQuery(options);

class Query$ClassTest$Widget extends graphql_flutter.Query<Query$ClassTest> {
  Query$ClassTest$Widget({
    widgets.Key? key,
    required Options$Query$ClassTest options,
    required graphql_flutter.QueryBuilder<Query$ClassTest> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$ClassTest$classTest {
  Query$ClassTest$classTest({
    required this.id,
    required this.title,
    required this.content,
    this.createdBy,
    required this.datetime,
    this.createdAt,
    this.$__typename = 'ClassTest',
  });

  factory Query$ClassTest$classTest.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$content = json['content'];
    final l$createdBy = json['createdBy'];
    final l$datetime = json['datetime'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$ClassTest$classTest(
      id: (l$id as String),
      title: (l$title as String),
      content: Query$ClassTest$classTest$content.fromJson(
          (l$content as Map<String, dynamic>)),
      createdBy: l$createdBy == null
          ? null
          : Query$ClassTest$classTest$createdBy.fromJson(
              (l$createdBy as Map<String, dynamic>)),
      datetime: DateTime.parse((l$datetime as String)),
      createdAt:
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Query$ClassTest$classTest$content content;

  final Query$ClassTest$classTest$createdBy? createdBy;

  final DateTime datetime;

  final DateTime? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$content = content;
    _resultData['content'] = l$content.toJson();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy?.toJson();
    final l$datetime = datetime;
    _resultData['datetime'] = l$datetime.toIso8601String();
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
    final l$datetime = datetime;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$content,
      l$createdBy,
      l$datetime,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ClassTest$classTest ||
        runtimeType != other.runtimeType) {
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
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (l$datetime != lOther$datetime) {
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

extension UtilityExtension$Query$ClassTest$classTest
    on Query$ClassTest$classTest {
  CopyWith$Query$ClassTest$classTest<Query$ClassTest$classTest> get copyWith =>
      CopyWith$Query$ClassTest$classTest(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ClassTest$classTest<TRes> {
  factory CopyWith$Query$ClassTest$classTest(
    Query$ClassTest$classTest instance,
    TRes Function(Query$ClassTest$classTest) then,
  ) = _CopyWithImpl$Query$ClassTest$classTest;

  factory CopyWith$Query$ClassTest$classTest.stub(TRes res) =
      _CopyWithStubImpl$Query$ClassTest$classTest;

  TRes call({
    String? id,
    String? title,
    Query$ClassTest$classTest$content? content,
    Query$ClassTest$classTest$createdBy? createdBy,
    DateTime? datetime,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Query$ClassTest$classTest$content<TRes> get content;
  CopyWith$Query$ClassTest$classTest$createdBy<TRes> get createdBy;
}

class _CopyWithImpl$Query$ClassTest$classTest<TRes>
    implements CopyWith$Query$ClassTest$classTest<TRes> {
  _CopyWithImpl$Query$ClassTest$classTest(
    this._instance,
    this._then,
  );

  final Query$ClassTest$classTest _instance;

  final TRes Function(Query$ClassTest$classTest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? content = _undefined,
    Object? createdBy = _undefined,
    Object? datetime = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClassTest$classTest(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as Query$ClassTest$classTest$content),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as Query$ClassTest$classTest$createdBy?),
        datetime: datetime == _undefined || datetime == null
            ? _instance.datetime
            : (datetime as DateTime),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ClassTest$classTest$content<TRes> get content {
    final local$content = _instance.content;
    return CopyWith$Query$ClassTest$classTest$content(
        local$content, (e) => call(content: e));
  }

  CopyWith$Query$ClassTest$classTest$createdBy<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Query$ClassTest$classTest$createdBy.stub(_then(_instance))
        : CopyWith$Query$ClassTest$classTest$createdBy(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Query$ClassTest$classTest<TRes>
    implements CopyWith$Query$ClassTest$classTest<TRes> {
  _CopyWithStubImpl$Query$ClassTest$classTest(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Query$ClassTest$classTest$content? content,
    Query$ClassTest$classTest$createdBy? createdBy,
    DateTime? datetime,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ClassTest$classTest$content<TRes> get content =>
      CopyWith$Query$ClassTest$classTest$content.stub(_res);

  CopyWith$Query$ClassTest$classTest$createdBy<TRes> get createdBy =>
      CopyWith$Query$ClassTest$classTest$createdBy.stub(_res);
}

class Query$ClassTest$classTest$content {
  Query$ClassTest$classTest$content({
    required this.document,
    this.$__typename = 'ClassTest_content_Document',
  });

  factory Query$ClassTest$classTest$content.fromJson(
      Map<String, dynamic> json) {
    final l$document = json['document'];
    final l$$__typename = json['__typename'];
    return Query$ClassTest$classTest$content(
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
    if (other is! Query$ClassTest$classTest$content ||
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

extension UtilityExtension$Query$ClassTest$classTest$content
    on Query$ClassTest$classTest$content {
  CopyWith$Query$ClassTest$classTest$content<Query$ClassTest$classTest$content>
      get copyWith => CopyWith$Query$ClassTest$classTest$content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ClassTest$classTest$content<TRes> {
  factory CopyWith$Query$ClassTest$classTest$content(
    Query$ClassTest$classTest$content instance,
    TRes Function(Query$ClassTest$classTest$content) then,
  ) = _CopyWithImpl$Query$ClassTest$classTest$content;

  factory CopyWith$Query$ClassTest$classTest$content.stub(TRes res) =
      _CopyWithStubImpl$Query$ClassTest$classTest$content;

  TRes call({
    Object? document,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ClassTest$classTest$content<TRes>
    implements CopyWith$Query$ClassTest$classTest$content<TRes> {
  _CopyWithImpl$Query$ClassTest$classTest$content(
    this._instance,
    this._then,
  );

  final Query$ClassTest$classTest$content _instance;

  final TRes Function(Query$ClassTest$classTest$content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? document = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClassTest$classTest$content(
        document: document == _undefined || document == null
            ? _instance.document
            : (document as Object),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ClassTest$classTest$content<TRes>
    implements CopyWith$Query$ClassTest$classTest$content<TRes> {
  _CopyWithStubImpl$Query$ClassTest$classTest$content(this._res);

  TRes _res;

  call({
    Object? document,
    String? $__typename,
  }) =>
      _res;
}

class Query$ClassTest$classTest$createdBy {
  Query$ClassTest$classTest$createdBy({
    required this.name,
    this.role,
    this.$__typename = 'User',
  });

  factory Query$ClassTest$classTest$createdBy.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Query$ClassTest$classTest$createdBy(
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
    if (other is! Query$ClassTest$classTest$createdBy ||
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

extension UtilityExtension$Query$ClassTest$classTest$createdBy
    on Query$ClassTest$classTest$createdBy {
  CopyWith$Query$ClassTest$classTest$createdBy<
          Query$ClassTest$classTest$createdBy>
      get copyWith => CopyWith$Query$ClassTest$classTest$createdBy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ClassTest$classTest$createdBy<TRes> {
  factory CopyWith$Query$ClassTest$classTest$createdBy(
    Query$ClassTest$classTest$createdBy instance,
    TRes Function(Query$ClassTest$classTest$createdBy) then,
  ) = _CopyWithImpl$Query$ClassTest$classTest$createdBy;

  factory CopyWith$Query$ClassTest$classTest$createdBy.stub(TRes res) =
      _CopyWithStubImpl$Query$ClassTest$classTest$createdBy;

  TRes call({
    String? name,
    Enum$UserRoleType? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ClassTest$classTest$createdBy<TRes>
    implements CopyWith$Query$ClassTest$classTest$createdBy<TRes> {
  _CopyWithImpl$Query$ClassTest$classTest$createdBy(
    this._instance,
    this._then,
  );

  final Query$ClassTest$classTest$createdBy _instance;

  final TRes Function(Query$ClassTest$classTest$createdBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClassTest$classTest$createdBy(
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

class _CopyWithStubImpl$Query$ClassTest$classTest$createdBy<TRes>
    implements CopyWith$Query$ClassTest$classTest$createdBy<TRes> {
  _CopyWithStubImpl$Query$ClassTest$classTest$createdBy(this._res);

  TRes _res;

  call({
    String? name,
    Enum$UserRoleType? role,
    String? $__typename,
  }) =>
      _res;
}
