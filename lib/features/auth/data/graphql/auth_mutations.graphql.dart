// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../core/graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$AuthenticateUserWithPassword {
  factory Variables$Mutation$AuthenticateUserWithPassword({
    required String email,
    required String password,
  }) =>
      Variables$Mutation$AuthenticateUserWithPassword._({
        r'email': email,
        r'password': password,
      });

  Variables$Mutation$AuthenticateUserWithPassword._(this._$data);

  factory Variables$Mutation$AuthenticateUserWithPassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$AuthenticateUserWithPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$AuthenticateUserWithPassword<
          Variables$Mutation$AuthenticateUserWithPassword>
      get copyWith => CopyWith$Variables$Mutation$AuthenticateUserWithPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AuthenticateUserWithPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AuthenticateUserWithPassword<TRes> {
  factory CopyWith$Variables$Mutation$AuthenticateUserWithPassword(
    Variables$Mutation$AuthenticateUserWithPassword instance,
    TRes Function(Variables$Mutation$AuthenticateUserWithPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$AuthenticateUserWithPassword;

  factory CopyWith$Variables$Mutation$AuthenticateUserWithPassword.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AuthenticateUserWithPassword;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Variables$Mutation$AuthenticateUserWithPassword<TRes>
    implements CopyWith$Variables$Mutation$AuthenticateUserWithPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$AuthenticateUserWithPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AuthenticateUserWithPassword _instance;

  final TRes Function(Variables$Mutation$AuthenticateUserWithPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables$Mutation$AuthenticateUserWithPassword._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AuthenticateUserWithPassword<TRes>
    implements CopyWith$Variables$Mutation$AuthenticateUserWithPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AuthenticateUserWithPassword(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Mutation$AuthenticateUserWithPassword {
  Mutation$AuthenticateUserWithPassword({
    this.authenticateUserWithPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AuthenticateUserWithPassword.fromJson(
      Map<String, dynamic> json) {
    final l$authenticateUserWithPassword = json['authenticateUserWithPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$AuthenticateUserWithPassword(
      authenticateUserWithPassword: l$authenticateUserWithPassword == null
          ? null
          : Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword
              .fromJson(
                  (l$authenticateUserWithPassword as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword?
      authenticateUserWithPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authenticateUserWithPassword = authenticateUserWithPassword;
    _resultData['authenticateUserWithPassword'] =
        l$authenticateUserWithPassword?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authenticateUserWithPassword = authenticateUserWithPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$authenticateUserWithPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AuthenticateUserWithPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$authenticateUserWithPassword = authenticateUserWithPassword;
    final lOther$authenticateUserWithPassword =
        other.authenticateUserWithPassword;
    if (l$authenticateUserWithPassword != lOther$authenticateUserWithPassword) {
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

extension UtilityExtension$Mutation$AuthenticateUserWithPassword
    on Mutation$AuthenticateUserWithPassword {
  CopyWith$Mutation$AuthenticateUserWithPassword<
          Mutation$AuthenticateUserWithPassword>
      get copyWith => CopyWith$Mutation$AuthenticateUserWithPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AuthenticateUserWithPassword<TRes> {
  factory CopyWith$Mutation$AuthenticateUserWithPassword(
    Mutation$AuthenticateUserWithPassword instance,
    TRes Function(Mutation$AuthenticateUserWithPassword) then,
  ) = _CopyWithImpl$Mutation$AuthenticateUserWithPassword;

  factory CopyWith$Mutation$AuthenticateUserWithPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword;

  TRes call({
    Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword?
        authenticateUserWithPassword,
    String? $__typename,
  });
  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword<
      TRes> get authenticateUserWithPassword;
}

class _CopyWithImpl$Mutation$AuthenticateUserWithPassword<TRes>
    implements CopyWith$Mutation$AuthenticateUserWithPassword<TRes> {
  _CopyWithImpl$Mutation$AuthenticateUserWithPassword(
    this._instance,
    this._then,
  );

  final Mutation$AuthenticateUserWithPassword _instance;

  final TRes Function(Mutation$AuthenticateUserWithPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authenticateUserWithPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AuthenticateUserWithPassword(
        authenticateUserWithPassword: authenticateUserWithPassword == _undefined
            ? _instance.authenticateUserWithPassword
            : (authenticateUserWithPassword
                as Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword<
      TRes> get authenticateUserWithPassword {
    final local$authenticateUserWithPassword =
        _instance.authenticateUserWithPassword;
    return local$authenticateUserWithPassword == null
        ? CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword
            .stub(_then(_instance))
        : CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword(
            local$authenticateUserWithPassword,
            (e) => call(authenticateUserWithPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword<TRes>
    implements CopyWith$Mutation$AuthenticateUserWithPassword<TRes> {
  _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword(this._res);

  TRes _res;

  call({
    Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword?
        authenticateUserWithPassword,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword<
          TRes>
      get authenticateUserWithPassword =>
          CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword
              .stub(_res);
}

const documentNodeMutationAuthenticateUserWithPassword =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AuthenticateUserWithPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'authenticateUserWithPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'UserAuthenticationWithPasswordSuccess'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'item'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'sessionToken'),
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
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'UserAuthenticationWithPasswordFailure'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'message'),
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
Mutation$AuthenticateUserWithPassword
    _parserFn$Mutation$AuthenticateUserWithPassword(
            Map<String, dynamic> data) =>
        Mutation$AuthenticateUserWithPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$AuthenticateUserWithPassword
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$AuthenticateUserWithPassword?,
);

class Options$Mutation$AuthenticateUserWithPassword
    extends graphql.MutationOptions<Mutation$AuthenticateUserWithPassword> {
  Options$Mutation$AuthenticateUserWithPassword({
    String? operationName,
    required Variables$Mutation$AuthenticateUserWithPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AuthenticateUserWithPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AuthenticateUserWithPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$AuthenticateUserWithPassword>? update,
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
                        : _parserFn$Mutation$AuthenticateUserWithPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuthenticateUserWithPassword,
          parserFn: _parserFn$Mutation$AuthenticateUserWithPassword,
        );

  final OnMutationCompleted$Mutation$AuthenticateUserWithPassword?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AuthenticateUserWithPassword
    extends graphql.WatchQueryOptions<Mutation$AuthenticateUserWithPassword> {
  WatchOptions$Mutation$AuthenticateUserWithPassword({
    String? operationName,
    required Variables$Mutation$AuthenticateUserWithPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AuthenticateUserWithPassword? typedOptimisticResult,
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
          document: documentNodeMutationAuthenticateUserWithPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AuthenticateUserWithPassword,
        );
}

extension ClientExtension$Mutation$AuthenticateUserWithPassword
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AuthenticateUserWithPassword>>
      mutate$AuthenticateUserWithPassword(
              Options$Mutation$AuthenticateUserWithPassword options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$AuthenticateUserWithPassword>
      watchMutation$AuthenticateUserWithPassword(
              WatchOptions$Mutation$AuthenticateUserWithPassword options) =>
          this.watchMutation(options);
}

class Mutation$AuthenticateUserWithPassword$HookResult {
  Mutation$AuthenticateUserWithPassword$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$AuthenticateUserWithPassword runMutation;

  final graphql.QueryResult<Mutation$AuthenticateUserWithPassword> result;
}

Mutation$AuthenticateUserWithPassword$HookResult
    useMutation$AuthenticateUserWithPassword(
        [WidgetOptions$Mutation$AuthenticateUserWithPassword? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$AuthenticateUserWithPassword());
  return Mutation$AuthenticateUserWithPassword$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AuthenticateUserWithPassword>
    useWatchMutation$AuthenticateUserWithPassword(
            WatchOptions$Mutation$AuthenticateUserWithPassword options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AuthenticateUserWithPassword
    extends graphql.MutationOptions<Mutation$AuthenticateUserWithPassword> {
  WidgetOptions$Mutation$AuthenticateUserWithPassword({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AuthenticateUserWithPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AuthenticateUserWithPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$AuthenticateUserWithPassword>? update,
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
                        : _parserFn$Mutation$AuthenticateUserWithPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuthenticateUserWithPassword,
          parserFn: _parserFn$Mutation$AuthenticateUserWithPassword,
        );

  final OnMutationCompleted$Mutation$AuthenticateUserWithPassword?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$AuthenticateUserWithPassword
    = graphql.MultiSourceResult<Mutation$AuthenticateUserWithPassword> Function(
  Variables$Mutation$AuthenticateUserWithPassword, {
  Object? optimisticResult,
  Mutation$AuthenticateUserWithPassword? typedOptimisticResult,
});
typedef Builder$Mutation$AuthenticateUserWithPassword = widgets.Widget Function(
  RunMutation$Mutation$AuthenticateUserWithPassword,
  graphql.QueryResult<Mutation$AuthenticateUserWithPassword>?,
);

class Mutation$AuthenticateUserWithPassword$Widget
    extends graphql_flutter.Mutation<Mutation$AuthenticateUserWithPassword> {
  Mutation$AuthenticateUserWithPassword$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AuthenticateUserWithPassword? options,
    required Builder$Mutation$AuthenticateUserWithPassword builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$AuthenticateUserWithPassword(),
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

class Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword {
  Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword(
      {required this.$__typename});

  factory Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "UserAuthenticationWithPasswordSuccess":
        return Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess
            .fromJson(json);

      case "UserAuthenticationWithPasswordFailure":
        return Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword(
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
    if (other
            is! Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword ||
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

extension UtilityExtension$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword
    on Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword {
  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword<
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword>
      get copyWith =>
          CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess)
        userAuthenticationWithPasswordSuccess,
    required _T Function(
            Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure)
        userAuthenticationWithPasswordFailure,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "UserAuthenticationWithPasswordSuccess":
        return userAuthenticationWithPasswordSuccess(this
            as Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess);

      case "UserAuthenticationWithPasswordFailure":
        return userAuthenticationWithPasswordFailure(this
            as Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess)?
        userAuthenticationWithPasswordSuccess,
    _T Function(
            Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure)?
        userAuthenticationWithPasswordFailure,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "UserAuthenticationWithPasswordSuccess":
        if (userAuthenticationWithPasswordSuccess != null) {
          return userAuthenticationWithPasswordSuccess(this
              as Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess);
        } else {
          return orElse();
        }

      case "UserAuthenticationWithPasswordFailure":
        if (userAuthenticationWithPasswordFailure != null) {
          return userAuthenticationWithPasswordFailure(this
              as Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword<
    TRes> {
  factory CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword(
    Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword instance,
    TRes Function(
            Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword)
        then,
  ) = _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword;

  factory CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword<
        TRes>
    implements
        CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword<
            TRes> {
  _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword(
    this._instance,
    this._then,
  );

  final Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword
      _instance;

  final TRes Function(
      Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword<
        TRes>
    implements
        CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword<
            TRes> {
  _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess
    implements
        Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword {
  Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess({
    required this.item,
    required this.sessionToken,
    this.$__typename = 'UserAuthenticationWithPasswordSuccess',
  });

  factory Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess.fromJson(
      Map<String, dynamic> json) {
    final l$item = json['item'];
    final l$sessionToken = json['sessionToken'];
    final l$$__typename = json['__typename'];
    return Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess(
      item:
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item
              .fromJson((l$item as Map<String, dynamic>)),
      sessionToken: (l$sessionToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item
      item;

  final String sessionToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$item = item;
    _resultData['item'] = l$item.toJson();
    final l$sessionToken = sessionToken;
    _resultData['sessionToken'] = l$sessionToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$item = item;
    final l$sessionToken = sessionToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$item,
      l$sessionToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$item = item;
    final lOther$item = other.item;
    if (l$item != lOther$item) {
      return false;
    }
    final l$sessionToken = sessionToken;
    final lOther$sessionToken = other.sessionToken;
    if (l$sessionToken != lOther$sessionToken) {
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

extension UtilityExtension$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess
    on Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess {
  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess<
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess>
      get copyWith =>
          CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess<
    TRes> {
  factory CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess(
    Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess
        instance,
    TRes Function(
            Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess)
        then,
  ) = _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess;

  factory CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess;

  TRes call({
    Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item?
        item,
    String? sessionToken,
    String? $__typename,
  });
  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item<
      TRes> get item;
}

class _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess<
        TRes>
    implements
        CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess<
            TRes> {
  _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess(
    this._instance,
    this._then,
  );

  final Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess
      _instance;

  final TRes Function(
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? item = _undefined,
    Object? sessionToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess(
        item: item == _undefined || item == null
            ? _instance.item
            : (item
                as Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item),
        sessionToken: sessionToken == _undefined || sessionToken == null
            ? _instance.sessionToken
            : (sessionToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item<
      TRes> get item {
    final local$item = _instance.item;
    return CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item(
        local$item, (e) => call(item: e));
  }
}

class _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess<
        TRes>
    implements
        CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess<
            TRes> {
  _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess(
      this._res);

  TRes _res;

  call({
    Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item?
        item,
    String? sessionToken,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item<
          TRes>
      get item =>
          CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item
              .stub(_res);
}

class Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item {
  Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item({
    required this.id,
    required this.name,
    required this.email,
    this.role,
    this.$__typename = 'User',
  });

  factory Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      role: l$role == null
          ? null
          : fromJson$Enum$UserRoleType((l$role as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final Enum$UserRoleType? role;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$role,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item
    on Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item {
  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item<
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item>
      get copyWith =>
          CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item<
    TRes> {
  factory CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item(
    Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item
        instance,
    TRes Function(
            Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item)
        then,
  ) = _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item;

  factory CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item;

  TRes call({
    String? id,
    String? name,
    String? email,
    Enum$UserRoleType? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item<
        TRes>
    implements
        CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item<
            TRes> {
  _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item(
    this._instance,
    this._then,
  );

  final Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item
      _instance;

  final TRes Function(
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        role:
            role == _undefined ? _instance.role : (role as Enum$UserRoleType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item<
        TRes>
    implements
        CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item<
            TRes> {
  _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess$item(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? email,
    Enum$UserRoleType? role,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure
    implements
        Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword {
  Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure({
    required this.message,
    this.$__typename = 'UserAuthenticationWithPasswordFailure',
  });

  factory Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure
    on Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure {
  CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure<
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure>
      get copyWith =>
          CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure<
    TRes> {
  factory CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure(
    Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure
        instance,
    TRes Function(
            Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure)
        then,
  ) = _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure;

  factory CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure<
        TRes>
    implements
        CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure<
            TRes> {
  _CopyWithImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure(
    this._instance,
    this._then,
  );

  final Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure
      _instance;

  final TRes Function(
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure<
        TRes>
    implements
        CopyWith$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure<
            TRes> {
  _CopyWithStubImpl$Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure(
      this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateUser {
  factory Variables$Mutation$CreateUser(
          {required Input$UserCreateInput data}) =>
      Variables$Mutation$CreateUser._({
        r'data': data,
      });

  Variables$Mutation$CreateUser._(this._$data);

  factory Variables$Mutation$CreateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$UserCreateInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserCreateInput get data => (_$data['data'] as Input$UserCreateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateUser<Variables$Mutation$CreateUser>
      get copyWith => CopyWith$Variables$Mutation$CreateUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateUser ||
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

abstract class CopyWith$Variables$Mutation$CreateUser<TRes> {
  factory CopyWith$Variables$Mutation$CreateUser(
    Variables$Mutation$CreateUser instance,
    TRes Function(Variables$Mutation$CreateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateUser;

  factory CopyWith$Variables$Mutation$CreateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateUser;

  TRes call({Input$UserCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateUser<TRes>
    implements CopyWith$Variables$Mutation$CreateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateUser _instance;

  final TRes Function(Variables$Mutation$CreateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateUser._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$UserCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateUser<TRes>
    implements CopyWith$Variables$Mutation$CreateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateUser(this._res);

  TRes _res;

  call({Input$UserCreateInput? data}) => _res;
}

class Mutation$CreateUser {
  Mutation$CreateUser({
    this.createUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateUser.fromJson(Map<String, dynamic> json) {
    final l$createUser = json['createUser'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser(
      createUser: l$createUser == null
          ? null
          : Mutation$CreateUser$createUser.fromJson(
              (l$createUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateUser$createUser? createUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createUser = createUser;
    _resultData['createUser'] = l$createUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createUser = createUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createUser = createUser;
    final lOther$createUser = other.createUser;
    if (l$createUser != lOther$createUser) {
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

extension UtilityExtension$Mutation$CreateUser on Mutation$CreateUser {
  CopyWith$Mutation$CreateUser<Mutation$CreateUser> get copyWith =>
      CopyWith$Mutation$CreateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateUser<TRes> {
  factory CopyWith$Mutation$CreateUser(
    Mutation$CreateUser instance,
    TRes Function(Mutation$CreateUser) then,
  ) = _CopyWithImpl$Mutation$CreateUser;

  factory CopyWith$Mutation$CreateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUser;

  TRes call({
    Mutation$CreateUser$createUser? createUser,
    String? $__typename,
  });
  CopyWith$Mutation$CreateUser$createUser<TRes> get createUser;
}

class _CopyWithImpl$Mutation$CreateUser<TRes>
    implements CopyWith$Mutation$CreateUser<TRes> {
  _CopyWithImpl$Mutation$CreateUser(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser _instance;

  final TRes Function(Mutation$CreateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateUser(
        createUser: createUser == _undefined
            ? _instance.createUser
            : (createUser as Mutation$CreateUser$createUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateUser$createUser<TRes> get createUser {
    final local$createUser = _instance.createUser;
    return local$createUser == null
        ? CopyWith$Mutation$CreateUser$createUser.stub(_then(_instance))
        : CopyWith$Mutation$CreateUser$createUser(
            local$createUser, (e) => call(createUser: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateUser<TRes>
    implements CopyWith$Mutation$CreateUser<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser(this._res);

  TRes _res;

  call({
    Mutation$CreateUser$createUser? createUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateUser$createUser<TRes> get createUser =>
      CopyWith$Mutation$CreateUser$createUser.stub(_res);
}

const documentNodeMutationCreateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createUser'),
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
Mutation$CreateUser _parserFn$Mutation$CreateUser(Map<String, dynamic> data) =>
    Mutation$CreateUser.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateUser?,
);

class Options$Mutation$CreateUser
    extends graphql.MutationOptions<Mutation$CreateUser> {
  Options$Mutation$CreateUser({
    String? operationName,
    required Variables$Mutation$CreateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateUser>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateUser,
          parserFn: _parserFn$Mutation$CreateUser,
        );

  final OnMutationCompleted$Mutation$CreateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateUser
    extends graphql.WatchQueryOptions<Mutation$CreateUser> {
  WatchOptions$Mutation$CreateUser({
    String? operationName,
    required Variables$Mutation$CreateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateUser? typedOptimisticResult,
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
          document: documentNodeMutationCreateUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateUser,
        );
}

extension ClientExtension$Mutation$CreateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateUser>> mutate$CreateUser(
          Options$Mutation$CreateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateUser> watchMutation$CreateUser(
          WatchOptions$Mutation$CreateUser options) =>
      this.watchMutation(options);
}

class Mutation$CreateUser$HookResult {
  Mutation$CreateUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateUser runMutation;

  final graphql.QueryResult<Mutation$CreateUser> result;
}

Mutation$CreateUser$HookResult useMutation$CreateUser(
    [WidgetOptions$Mutation$CreateUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateUser());
  return Mutation$CreateUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateUser> useWatchMutation$CreateUser(
        WatchOptions$Mutation$CreateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateUser
    extends graphql.MutationOptions<Mutation$CreateUser> {
  WidgetOptions$Mutation$CreateUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateUser>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateUser,
          parserFn: _parserFn$Mutation$CreateUser,
        );

  final OnMutationCompleted$Mutation$CreateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateUser
    = graphql.MultiSourceResult<Mutation$CreateUser> Function(
  Variables$Mutation$CreateUser, {
  Object? optimisticResult,
  Mutation$CreateUser? typedOptimisticResult,
});
typedef Builder$Mutation$CreateUser = widgets.Widget Function(
  RunMutation$Mutation$CreateUser,
  graphql.QueryResult<Mutation$CreateUser>?,
);

class Mutation$CreateUser$Widget
    extends graphql_flutter.Mutation<Mutation$CreateUser> {
  Mutation$CreateUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateUser? options,
    required Builder$Mutation$CreateUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateUser(),
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

class Mutation$CreateUser$createUser {
  Mutation$CreateUser$createUser({
    required this.id,
    required this.name,
    required this.email,
    this.role,
    this.$__typename = 'User',
  });

  factory Mutation$CreateUser$createUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser$createUser(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      role: l$role == null
          ? null
          : fromJson$Enum$UserRoleType((l$role as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final Enum$UserRoleType? role;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$role,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateUser$createUser ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateUser$createUser
    on Mutation$CreateUser$createUser {
  CopyWith$Mutation$CreateUser$createUser<Mutation$CreateUser$createUser>
      get copyWith => CopyWith$Mutation$CreateUser$createUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateUser$createUser<TRes> {
  factory CopyWith$Mutation$CreateUser$createUser(
    Mutation$CreateUser$createUser instance,
    TRes Function(Mutation$CreateUser$createUser) then,
  ) = _CopyWithImpl$Mutation$CreateUser$createUser;

  factory CopyWith$Mutation$CreateUser$createUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUser$createUser;

  TRes call({
    String? id,
    String? name,
    String? email,
    Enum$UserRoleType? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateUser$createUser<TRes>
    implements CopyWith$Mutation$CreateUser$createUser<TRes> {
  _CopyWithImpl$Mutation$CreateUser$createUser(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$createUser _instance;

  final TRes Function(Mutation$CreateUser$createUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateUser$createUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        role:
            role == _undefined ? _instance.role : (role as Enum$UserRoleType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateUser$createUser<TRes>
    implements CopyWith$Mutation$CreateUser$createUser<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$createUser(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? email,
    Enum$UserRoleType? role,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$EndSession {
  Mutation$EndSession({
    required this.endSession,
    this.$__typename = 'Mutation',
  });

  factory Mutation$EndSession.fromJson(Map<String, dynamic> json) {
    final l$endSession = json['endSession'];
    final l$$__typename = json['__typename'];
    return Mutation$EndSession(
      endSession: (l$endSession as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool endSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endSession = endSession;
    _resultData['endSession'] = l$endSession;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endSession = endSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$EndSession || runtimeType != other.runtimeType) {
      return false;
    }
    final l$endSession = endSession;
    final lOther$endSession = other.endSession;
    if (l$endSession != lOther$endSession) {
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

extension UtilityExtension$Mutation$EndSession on Mutation$EndSession {
  CopyWith$Mutation$EndSession<Mutation$EndSession> get copyWith =>
      CopyWith$Mutation$EndSession(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EndSession<TRes> {
  factory CopyWith$Mutation$EndSession(
    Mutation$EndSession instance,
    TRes Function(Mutation$EndSession) then,
  ) = _CopyWithImpl$Mutation$EndSession;

  factory CopyWith$Mutation$EndSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$EndSession;

  TRes call({
    bool? endSession,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EndSession<TRes>
    implements CopyWith$Mutation$EndSession<TRes> {
  _CopyWithImpl$Mutation$EndSession(
    this._instance,
    this._then,
  );

  final Mutation$EndSession _instance;

  final TRes Function(Mutation$EndSession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$EndSession(
        endSession: endSession == _undefined || endSession == null
            ? _instance.endSession
            : (endSession as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$EndSession<TRes>
    implements CopyWith$Mutation$EndSession<TRes> {
  _CopyWithStubImpl$Mutation$EndSession(this._res);

  TRes _res;

  call({
    bool? endSession,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationEndSession = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'EndSession'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'endSession'),
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
Mutation$EndSession _parserFn$Mutation$EndSession(Map<String, dynamic> data) =>
    Mutation$EndSession.fromJson(data);
typedef OnMutationCompleted$Mutation$EndSession = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$EndSession?,
);

class Options$Mutation$EndSession
    extends graphql.MutationOptions<Mutation$EndSession> {
  Options$Mutation$EndSession({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EndSession? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EndSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$EndSession>? update,
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
                    data == null ? null : _parserFn$Mutation$EndSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationEndSession,
          parserFn: _parserFn$Mutation$EndSession,
        );

  final OnMutationCompleted$Mutation$EndSession? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$EndSession
    extends graphql.WatchQueryOptions<Mutation$EndSession> {
  WatchOptions$Mutation$EndSession({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EndSession? typedOptimisticResult,
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
          document: documentNodeMutationEndSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$EndSession,
        );
}

extension ClientExtension$Mutation$EndSession on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$EndSession>> mutate$EndSession(
          [Options$Mutation$EndSession? options]) async =>
      await this.mutate(options ?? Options$Mutation$EndSession());
  graphql.ObservableQuery<Mutation$EndSession> watchMutation$EndSession(
          [WatchOptions$Mutation$EndSession? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$EndSession());
}

class Mutation$EndSession$HookResult {
  Mutation$EndSession$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$EndSession runMutation;

  final graphql.QueryResult<Mutation$EndSession> result;
}

Mutation$EndSession$HookResult useMutation$EndSession(
    [WidgetOptions$Mutation$EndSession? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$EndSession());
  return Mutation$EndSession$HookResult(
    ({optimisticResult, typedOptimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$EndSession> useWatchMutation$EndSession(
        [WatchOptions$Mutation$EndSession? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$EndSession());

class WidgetOptions$Mutation$EndSession
    extends graphql.MutationOptions<Mutation$EndSession> {
  WidgetOptions$Mutation$EndSession({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EndSession? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EndSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$EndSession>? update,
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
                    data == null ? null : _parserFn$Mutation$EndSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationEndSession,
          parserFn: _parserFn$Mutation$EndSession,
        );

  final OnMutationCompleted$Mutation$EndSession? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$EndSession
    = graphql.MultiSourceResult<Mutation$EndSession> Function({
  Object? optimisticResult,
  Mutation$EndSession? typedOptimisticResult,
});
typedef Builder$Mutation$EndSession = widgets.Widget Function(
  RunMutation$Mutation$EndSession,
  graphql.QueryResult<Mutation$EndSession>?,
);

class Mutation$EndSession$Widget
    extends graphql_flutter.Mutation<Mutation$EndSession> {
  Mutation$EndSession$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$EndSession? options,
    required Builder$Mutation$EndSession builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$EndSession(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}
