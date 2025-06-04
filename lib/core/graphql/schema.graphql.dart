// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
class Input$UserWhereUniqueInput {
  factory Input$UserWhereUniqueInput({
    String? id,
    String? email,
  }) =>
      Input$UserWhereUniqueInput._({
        if (id != null) r'id': id,
        if (email != null) r'email': email,
      });

  Input$UserWhereUniqueInput._(this._$data);

  factory Input$UserWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    return Input$UserWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get email => (_$data['email'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    return result$data;
  }

  CopyWith$Input$UserWhereUniqueInput<Input$UserWhereUniqueInput>
      get copyWith => CopyWith$Input$UserWhereUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserWhereUniqueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('email') ? l$email : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserWhereUniqueInput<TRes> {
  factory CopyWith$Input$UserWhereUniqueInput(
    Input$UserWhereUniqueInput instance,
    TRes Function(Input$UserWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$UserWhereUniqueInput;

  factory CopyWith$Input$UserWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserWhereUniqueInput;

  TRes call({
    String? id,
    String? email,
  });
}

class _CopyWithImpl$Input$UserWhereUniqueInput<TRes>
    implements CopyWith$Input$UserWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$UserWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$UserWhereUniqueInput _instance;

  final TRes Function(Input$UserWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
  }) =>
      _then(Input$UserWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (email != _undefined) 'email': (email as String?),
      }));
}

class _CopyWithStubImpl$Input$UserWhereUniqueInput<TRes>
    implements CopyWith$Input$UserWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$UserWhereUniqueInput(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
  }) =>
      _res;
}

class Input$UserWhereInput {
  factory Input$UserWhereInput({
    List<Input$UserWhereInput>? AND,
    List<Input$UserWhereInput>? OR,
    List<Input$UserWhereInput>? NOT,
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$StringFilter? email,
    Input$NoticeManyRelationFilter? notices,
    Input$ClassTestManyRelationFilter? classTests,
    Input$ExpoTokenManyRelationFilter? tokens,
    Input$UserRoleTypeNullableFilter? role,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
  }) =>
      Input$UserWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        if (notices != null) r'notices': notices,
        if (classTests != null) r'classTests': classTests,
        if (tokens != null) r'tokens': tokens,
        if (role != null) r'role': role,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UserWhereInput._(this._$data);

  factory Input$UserWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map(
              (e) => Input$UserWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map(
              (e) => Input$UserWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map(
              (e) => Input$UserWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : Input$StringFilter.fromJson((l$email as Map<String, dynamic>));
    }
    if (data.containsKey('notices')) {
      final l$notices = data['notices'];
      result$data['notices'] = l$notices == null
          ? null
          : Input$NoticeManyRelationFilter.fromJson(
              (l$notices as Map<String, dynamic>));
    }
    if (data.containsKey('classTests')) {
      final l$classTests = data['classTests'];
      result$data['classTests'] = l$classTests == null
          ? null
          : Input$ClassTestManyRelationFilter.fromJson(
              (l$classTests as Map<String, dynamic>));
    }
    if (data.containsKey('tokens')) {
      final l$tokens = data['tokens'];
      result$data['tokens'] = l$tokens == null
          ? null
          : Input$ExpoTokenManyRelationFilter.fromJson(
              (l$tokens as Map<String, dynamic>));
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = l$role == null
          ? null
          : Input$UserRoleTypeNullableFilter.fromJson(
              (l$role as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$DateTimeNullableFilter.fromJson(
              (l$createdAt as Map<String, dynamic>));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$DateTimeNullableFilter.fromJson(
              (l$updatedAt as Map<String, dynamic>));
    }
    return Input$UserWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$UserWhereInput>? get AND =>
      (_$data['AND'] as List<Input$UserWhereInput>?);

  List<Input$UserWhereInput>? get OR =>
      (_$data['OR'] as List<Input$UserWhereInput>?);

  List<Input$UserWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$UserWhereInput>?);

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);

  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);

  Input$StringFilter? get email => (_$data['email'] as Input$StringFilter?);

  Input$NoticeManyRelationFilter? get notices =>
      (_$data['notices'] as Input$NoticeManyRelationFilter?);

  Input$ClassTestManyRelationFilter? get classTests =>
      (_$data['classTests'] as Input$ClassTestManyRelationFilter?);

  Input$ExpoTokenManyRelationFilter? get tokens =>
      (_$data['tokens'] as Input$ExpoTokenManyRelationFilter?);

  Input$UserRoleTypeNullableFilter? get role =>
      (_$data['role'] as Input$UserRoleTypeNullableFilter?);

  Input$DateTimeNullableFilter? get createdAt =>
      (_$data['createdAt'] as Input$DateTimeNullableFilter?);

  Input$DateTimeNullableFilter? get updatedAt =>
      (_$data['updatedAt'] as Input$DateTimeNullableFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email?.toJson();
    }
    if (_$data.containsKey('notices')) {
      final l$notices = notices;
      result$data['notices'] = l$notices?.toJson();
    }
    if (_$data.containsKey('classTests')) {
      final l$classTests = classTests;
      result$data['classTests'] = l$classTests?.toJson();
    }
    if (_$data.containsKey('tokens')) {
      final l$tokens = tokens;
      result$data['tokens'] = l$tokens?.toJson();
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] = l$role?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserWhereInput<Input$UserWhereInput> get copyWith =>
      CopyWith$Input$UserWhereInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserWhereInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$notices = notices;
    final lOther$notices = other.notices;
    if (_$data.containsKey('notices') != other._$data.containsKey('notices')) {
      return false;
    }
    if (l$notices != lOther$notices) {
      return false;
    }
    final l$classTests = classTests;
    final lOther$classTests = other.classTests;
    if (_$data.containsKey('classTests') !=
        other._$data.containsKey('classTests')) {
      return false;
    }
    if (l$classTests != lOther$classTests) {
      return false;
    }
    final l$tokens = tokens;
    final lOther$tokens = other.tokens;
    if (_$data.containsKey('tokens') != other._$data.containsKey('tokens')) {
      return false;
    }
    if (l$tokens != lOther$tokens) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$notices = notices;
    final l$classTests = classTests;
    final l$tokens = tokens;
    final l$role = role;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('notices') ? l$notices : const {},
      _$data.containsKey('classTests') ? l$classTests : const {},
      _$data.containsKey('tokens') ? l$tokens : const {},
      _$data.containsKey('role') ? l$role : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserWhereInput<TRes> {
  factory CopyWith$Input$UserWhereInput(
    Input$UserWhereInput instance,
    TRes Function(Input$UserWhereInput) then,
  ) = _CopyWithImpl$Input$UserWhereInput;

  factory CopyWith$Input$UserWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserWhereInput;

  TRes call({
    List<Input$UserWhereInput>? AND,
    List<Input$UserWhereInput>? OR,
    List<Input$UserWhereInput>? NOT,
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$StringFilter? email,
    Input$NoticeManyRelationFilter? notices,
    Input$ClassTestManyRelationFilter? classTests,
    Input$ExpoTokenManyRelationFilter? tokens,
    Input$UserRoleTypeNullableFilter? role,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
  });
  TRes AND(
      Iterable<Input$UserWhereInput>? Function(
              Iterable<CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$UserWhereInput>? Function(
              Iterable<CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$UserWhereInput>? Function(
              Iterable<CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
          _fn);
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get name;
  CopyWith$Input$StringFilter<TRes> get email;
  CopyWith$Input$NoticeManyRelationFilter<TRes> get notices;
  CopyWith$Input$ClassTestManyRelationFilter<TRes> get classTests;
  CopyWith$Input$ExpoTokenManyRelationFilter<TRes> get tokens;
  CopyWith$Input$UserRoleTypeNullableFilter<TRes> get role;
  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt;
  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt;
}

class _CopyWithImpl$Input$UserWhereInput<TRes>
    implements CopyWith$Input$UserWhereInput<TRes> {
  _CopyWithImpl$Input$UserWhereInput(
    this._instance,
    this._then,
  );

  final Input$UserWhereInput _instance;

  final TRes Function(Input$UserWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? notices = _undefined,
    Object? classTests = _undefined,
    Object? tokens = _undefined,
    Object? role = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UserWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$UserWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$UserWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$UserWhereInput>?),
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (email != _undefined) 'email': (email as Input$StringFilter?),
        if (notices != _undefined)
          'notices': (notices as Input$NoticeManyRelationFilter?),
        if (classTests != _undefined)
          'classTests': (classTests as Input$ClassTestManyRelationFilter?),
        if (tokens != _undefined)
          'tokens': (tokens as Input$ExpoTokenManyRelationFilter?),
        if (role != _undefined)
          'role': (role as Input$UserRoleTypeNullableFilter?),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Input$DateTimeNullableFilter?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Input$DateTimeNullableFilter?),
      }));

  TRes AND(
          Iterable<Input$UserWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$UserWhereInput(
                e,
                (i) => i,
              )))?.toList());

  TRes OR(
          Iterable<Input$UserWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$UserWhereInput(
                e,
                (i) => i,
              )))?.toList());

  TRes NOT(
          Iterable<Input$UserWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$UserWhereInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringFilter<TRes> get email {
    final local$email = _instance.email;
    return local$email == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$email, (e) => call(email: e));
  }

  CopyWith$Input$NoticeManyRelationFilter<TRes> get notices {
    final local$notices = _instance.notices;
    return local$notices == null
        ? CopyWith$Input$NoticeManyRelationFilter.stub(_then(_instance))
        : CopyWith$Input$NoticeManyRelationFilter(
            local$notices, (e) => call(notices: e));
  }

  CopyWith$Input$ClassTestManyRelationFilter<TRes> get classTests {
    final local$classTests = _instance.classTests;
    return local$classTests == null
        ? CopyWith$Input$ClassTestManyRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ClassTestManyRelationFilter(
            local$classTests, (e) => call(classTests: e));
  }

  CopyWith$Input$ExpoTokenManyRelationFilter<TRes> get tokens {
    final local$tokens = _instance.tokens;
    return local$tokens == null
        ? CopyWith$Input$ExpoTokenManyRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ExpoTokenManyRelationFilter(
            local$tokens, (e) => call(tokens: e));
  }

  CopyWith$Input$UserRoleTypeNullableFilter<TRes> get role {
    final local$role = _instance.role;
    return local$role == null
        ? CopyWith$Input$UserRoleTypeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$UserRoleTypeNullableFilter(
            local$role, (e) => call(role: e));
  }

  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateTimeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeNullableFilter(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateTimeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeNullableFilter(
            local$updatedAt, (e) => call(updatedAt: e));
  }
}

class _CopyWithStubImpl$Input$UserWhereInput<TRes>
    implements CopyWith$Input$UserWhereInput<TRes> {
  _CopyWithStubImpl$Input$UserWhereInput(this._res);

  TRes _res;

  call({
    List<Input$UserWhereInput>? AND,
    List<Input$UserWhereInput>? OR,
    List<Input$UserWhereInput>? NOT,
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$StringFilter? email,
    Input$NoticeManyRelationFilter? notices,
    Input$ClassTestManyRelationFilter? classTests,
    Input$ExpoTokenManyRelationFilter? tokens,
    Input$UserRoleTypeNullableFilter? role,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
  }) =>
      _res;

  AND(_fn) => _res;

  OR(_fn) => _res;

  NOT(_fn) => _res;

  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get name =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get email =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$NoticeManyRelationFilter<TRes> get notices =>
      CopyWith$Input$NoticeManyRelationFilter.stub(_res);

  CopyWith$Input$ClassTestManyRelationFilter<TRes> get classTests =>
      CopyWith$Input$ClassTestManyRelationFilter.stub(_res);

  CopyWith$Input$ExpoTokenManyRelationFilter<TRes> get tokens =>
      CopyWith$Input$ExpoTokenManyRelationFilter.stub(_res);

  CopyWith$Input$UserRoleTypeNullableFilter<TRes> get role =>
      CopyWith$Input$UserRoleTypeNullableFilter.stub(_res);

  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt =>
      CopyWith$Input$DateTimeNullableFilter.stub(_res);

  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt =>
      CopyWith$Input$DateTimeNullableFilter.stub(_res);
}

class Input$IDFilter {
  factory Input$IDFilter({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$IDFilter? not,
  }) =>
      Input$IDFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
      });

  Input$IDFilter._(this._$data);

  factory Input$IDFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$IDFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$IDFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get equals => (_$data['equals'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  List<String>? get notIn => (_$data['notIn'] as List<String>?);

  String? get lt => (_$data['lt'] as String?);

  String? get lte => (_$data['lte'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get gte => (_$data['gte'] as String?);

  Input$IDFilter? get not => (_$data['not'] as Input$IDFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] = l$equals;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$IDFilter<Input$IDFilter> get copyWith =>
      CopyWith$Input$IDFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$IDFilter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$equals = equals;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lt = lt;
    final l$lte = lte;
    final l$gt = gt;
    final l$gte = gte;
    final l$not = not;
    return Object.hashAll([
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('not') ? l$not : const {},
    ]);
  }
}

abstract class CopyWith$Input$IDFilter<TRes> {
  factory CopyWith$Input$IDFilter(
    Input$IDFilter instance,
    TRes Function(Input$IDFilter) then,
  ) = _CopyWithImpl$Input$IDFilter;

  factory CopyWith$Input$IDFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$IDFilter;

  TRes call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$IDFilter? not,
  });
  CopyWith$Input$IDFilter<TRes> get not;
}

class _CopyWithImpl$Input$IDFilter<TRes>
    implements CopyWith$Input$IDFilter<TRes> {
  _CopyWithImpl$Input$IDFilter(
    this._instance,
    this._then,
  );

  final Input$IDFilter _instance;

  final TRes Function(Input$IDFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? not = _undefined,
  }) =>
      _then(Input$IDFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (not != _undefined) 'not': (not as Input$IDFilter?),
      }));

  CopyWith$Input$IDFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$IDFilter<TRes>
    implements CopyWith$Input$IDFilter<TRes> {
  _CopyWithStubImpl$Input$IDFilter(this._res);

  TRes _res;

  call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$IDFilter? not,
  }) =>
      _res;

  CopyWith$Input$IDFilter<TRes> get not => CopyWith$Input$IDFilter.stub(_res);
}

class Input$StringFilter {
  factory Input$StringFilter({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringFilter? not,
  }) =>
      Input$StringFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (contains != null) r'contains': contains,
        if (startsWith != null) r'startsWith': startsWith,
        if (endsWith != null) r'endsWith': endsWith,
        if (not != null) r'not': not,
      });

  Input$StringFilter._(this._$data);

  factory Input$StringFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('startsWith')) {
      final l$startsWith = data['startsWith'];
      result$data['startsWith'] = (l$startsWith as String?);
    }
    if (data.containsKey('endsWith')) {
      final l$endsWith = data['endsWith'];
      result$data['endsWith'] = (l$endsWith as String?);
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedStringFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$StringFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get equals => (_$data['equals'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  List<String>? get notIn => (_$data['notIn'] as List<String>?);

  String? get lt => (_$data['lt'] as String?);

  String? get lte => (_$data['lte'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get gte => (_$data['gte'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get startsWith => (_$data['startsWith'] as String?);

  String? get endsWith => (_$data['endsWith'] as String?);

  Input$NestedStringFilter? get not =>
      (_$data['not'] as Input$NestedStringFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] = l$equals;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('startsWith')) {
      final l$startsWith = startsWith;
      result$data['startsWith'] = l$startsWith;
    }
    if (_$data.containsKey('endsWith')) {
      final l$endsWith = endsWith;
      result$data['endsWith'] = l$endsWith;
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$StringFilter<Input$StringFilter> get copyWith =>
      CopyWith$Input$StringFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$StringFilter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$startsWith = startsWith;
    final lOther$startsWith = other.startsWith;
    if (_$data.containsKey('startsWith') !=
        other._$data.containsKey('startsWith')) {
      return false;
    }
    if (l$startsWith != lOther$startsWith) {
      return false;
    }
    final l$endsWith = endsWith;
    final lOther$endsWith = other.endsWith;
    if (_$data.containsKey('endsWith') !=
        other._$data.containsKey('endsWith')) {
      return false;
    }
    if (l$endsWith != lOther$endsWith) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$equals = equals;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lt = lt;
    final l$lte = lte;
    final l$gt = gt;
    final l$gte = gte;
    final l$contains = contains;
    final l$startsWith = startsWith;
    final l$endsWith = endsWith;
    final l$not = not;
    return Object.hashAll([
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('startsWith') ? l$startsWith : const {},
      _$data.containsKey('endsWith') ? l$endsWith : const {},
      _$data.containsKey('not') ? l$not : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringFilter<TRes> {
  factory CopyWith$Input$StringFilter(
    Input$StringFilter instance,
    TRes Function(Input$StringFilter) then,
  ) = _CopyWithImpl$Input$StringFilter;

  factory CopyWith$Input$StringFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringFilter;

  TRes call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringFilter? not,
  });
  CopyWith$Input$NestedStringFilter<TRes> get not;
}

class _CopyWithImpl$Input$StringFilter<TRes>
    implements CopyWith$Input$StringFilter<TRes> {
  _CopyWithImpl$Input$StringFilter(
    this._instance,
    this._then,
  );

  final Input$StringFilter _instance;

  final TRes Function(Input$StringFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? contains = _undefined,
    Object? startsWith = _undefined,
    Object? endsWith = _undefined,
    Object? not = _undefined,
  }) =>
      _then(Input$StringFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (contains != _undefined) 'contains': (contains as String?),
        if (startsWith != _undefined) 'startsWith': (startsWith as String?),
        if (endsWith != _undefined) 'endsWith': (endsWith as String?),
        if (not != _undefined) 'not': (not as Input$NestedStringFilter?),
      }));

  CopyWith$Input$NestedStringFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedStringFilter.stub(_then(_instance))
        : CopyWith$Input$NestedStringFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$StringFilter<TRes>
    implements CopyWith$Input$StringFilter<TRes> {
  _CopyWithStubImpl$Input$StringFilter(this._res);

  TRes _res;

  call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringFilter? not,
  }) =>
      _res;

  CopyWith$Input$NestedStringFilter<TRes> get not =>
      CopyWith$Input$NestedStringFilter.stub(_res);
}

class Input$NestedStringFilter {
  factory Input$NestedStringFilter({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringFilter? not,
  }) =>
      Input$NestedStringFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (contains != null) r'contains': contains,
        if (startsWith != null) r'startsWith': startsWith,
        if (endsWith != null) r'endsWith': endsWith,
        if (not != null) r'not': not,
      });

  Input$NestedStringFilter._(this._$data);

  factory Input$NestedStringFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('startsWith')) {
      final l$startsWith = data['startsWith'];
      result$data['startsWith'] = (l$startsWith as String?);
    }
    if (data.containsKey('endsWith')) {
      final l$endsWith = data['endsWith'];
      result$data['endsWith'] = (l$endsWith as String?);
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedStringFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$NestedStringFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get equals => (_$data['equals'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  List<String>? get notIn => (_$data['notIn'] as List<String>?);

  String? get lt => (_$data['lt'] as String?);

  String? get lte => (_$data['lte'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get gte => (_$data['gte'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get startsWith => (_$data['startsWith'] as String?);

  String? get endsWith => (_$data['endsWith'] as String?);

  Input$NestedStringFilter? get not =>
      (_$data['not'] as Input$NestedStringFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] = l$equals;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('startsWith')) {
      final l$startsWith = startsWith;
      result$data['startsWith'] = l$startsWith;
    }
    if (_$data.containsKey('endsWith')) {
      final l$endsWith = endsWith;
      result$data['endsWith'] = l$endsWith;
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$NestedStringFilter<Input$NestedStringFilter> get copyWith =>
      CopyWith$Input$NestedStringFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NestedStringFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$startsWith = startsWith;
    final lOther$startsWith = other.startsWith;
    if (_$data.containsKey('startsWith') !=
        other._$data.containsKey('startsWith')) {
      return false;
    }
    if (l$startsWith != lOther$startsWith) {
      return false;
    }
    final l$endsWith = endsWith;
    final lOther$endsWith = other.endsWith;
    if (_$data.containsKey('endsWith') !=
        other._$data.containsKey('endsWith')) {
      return false;
    }
    if (l$endsWith != lOther$endsWith) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$equals = equals;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lt = lt;
    final l$lte = lte;
    final l$gt = gt;
    final l$gte = gte;
    final l$contains = contains;
    final l$startsWith = startsWith;
    final l$endsWith = endsWith;
    final l$not = not;
    return Object.hashAll([
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('startsWith') ? l$startsWith : const {},
      _$data.containsKey('endsWith') ? l$endsWith : const {},
      _$data.containsKey('not') ? l$not : const {},
    ]);
  }
}

abstract class CopyWith$Input$NestedStringFilter<TRes> {
  factory CopyWith$Input$NestedStringFilter(
    Input$NestedStringFilter instance,
    TRes Function(Input$NestedStringFilter) then,
  ) = _CopyWithImpl$Input$NestedStringFilter;

  factory CopyWith$Input$NestedStringFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NestedStringFilter;

  TRes call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringFilter? not,
  });
  CopyWith$Input$NestedStringFilter<TRes> get not;
}

class _CopyWithImpl$Input$NestedStringFilter<TRes>
    implements CopyWith$Input$NestedStringFilter<TRes> {
  _CopyWithImpl$Input$NestedStringFilter(
    this._instance,
    this._then,
  );

  final Input$NestedStringFilter _instance;

  final TRes Function(Input$NestedStringFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? contains = _undefined,
    Object? startsWith = _undefined,
    Object? endsWith = _undefined,
    Object? not = _undefined,
  }) =>
      _then(Input$NestedStringFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (contains != _undefined) 'contains': (contains as String?),
        if (startsWith != _undefined) 'startsWith': (startsWith as String?),
        if (endsWith != _undefined) 'endsWith': (endsWith as String?),
        if (not != _undefined) 'not': (not as Input$NestedStringFilter?),
      }));

  CopyWith$Input$NestedStringFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedStringFilter.stub(_then(_instance))
        : CopyWith$Input$NestedStringFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$NestedStringFilter<TRes>
    implements CopyWith$Input$NestedStringFilter<TRes> {
  _CopyWithStubImpl$Input$NestedStringFilter(this._res);

  TRes _res;

  call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringFilter? not,
  }) =>
      _res;

  CopyWith$Input$NestedStringFilter<TRes> get not =>
      CopyWith$Input$NestedStringFilter.stub(_res);
}

class Input$NoticeManyRelationFilter {
  factory Input$NoticeManyRelationFilter({
    Input$NoticeWhereInput? every,
    Input$NoticeWhereInput? some,
    Input$NoticeWhereInput? none,
  }) =>
      Input$NoticeManyRelationFilter._({
        if (every != null) r'every': every,
        if (some != null) r'some': some,
        if (none != null) r'none': none,
      });

  Input$NoticeManyRelationFilter._(this._$data);

  factory Input$NoticeManyRelationFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('every')) {
      final l$every = data['every'];
      result$data['every'] = l$every == null
          ? null
          : Input$NoticeWhereInput.fromJson((l$every as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$NoticeWhereInput.fromJson((l$some as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$NoticeWhereInput.fromJson((l$none as Map<String, dynamic>));
    }
    return Input$NoticeManyRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$NoticeWhereInput? get every =>
      (_$data['every'] as Input$NoticeWhereInput?);

  Input$NoticeWhereInput? get some =>
      (_$data['some'] as Input$NoticeWhereInput?);

  Input$NoticeWhereInput? get none =>
      (_$data['none'] as Input$NoticeWhereInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('every')) {
      final l$every = every;
      result$data['every'] = l$every?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$NoticeManyRelationFilter<Input$NoticeManyRelationFilter>
      get copyWith => CopyWith$Input$NoticeManyRelationFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NoticeManyRelationFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$every = every;
    final lOther$every = other.every;
    if (_$data.containsKey('every') != other._$data.containsKey('every')) {
      return false;
    }
    if (l$every != lOther$every) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$every = every;
    final l$some = some;
    final l$none = none;
    return Object.hashAll([
      _$data.containsKey('every') ? l$every : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('none') ? l$none : const {},
    ]);
  }
}

abstract class CopyWith$Input$NoticeManyRelationFilter<TRes> {
  factory CopyWith$Input$NoticeManyRelationFilter(
    Input$NoticeManyRelationFilter instance,
    TRes Function(Input$NoticeManyRelationFilter) then,
  ) = _CopyWithImpl$Input$NoticeManyRelationFilter;

  factory CopyWith$Input$NoticeManyRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NoticeManyRelationFilter;

  TRes call({
    Input$NoticeWhereInput? every,
    Input$NoticeWhereInput? some,
    Input$NoticeWhereInput? none,
  });
  CopyWith$Input$NoticeWhereInput<TRes> get every;
  CopyWith$Input$NoticeWhereInput<TRes> get some;
  CopyWith$Input$NoticeWhereInput<TRes> get none;
}

class _CopyWithImpl$Input$NoticeManyRelationFilter<TRes>
    implements CopyWith$Input$NoticeManyRelationFilter<TRes> {
  _CopyWithImpl$Input$NoticeManyRelationFilter(
    this._instance,
    this._then,
  );

  final Input$NoticeManyRelationFilter _instance;

  final TRes Function(Input$NoticeManyRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? every = _undefined,
    Object? some = _undefined,
    Object? none = _undefined,
  }) =>
      _then(Input$NoticeManyRelationFilter._({
        ..._instance._$data,
        if (every != _undefined) 'every': (every as Input$NoticeWhereInput?),
        if (some != _undefined) 'some': (some as Input$NoticeWhereInput?),
        if (none != _undefined) 'none': (none as Input$NoticeWhereInput?),
      }));

  CopyWith$Input$NoticeWhereInput<TRes> get every {
    final local$every = _instance.every;
    return local$every == null
        ? CopyWith$Input$NoticeWhereInput.stub(_then(_instance))
        : CopyWith$Input$NoticeWhereInput(local$every, (e) => call(every: e));
  }

  CopyWith$Input$NoticeWhereInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$NoticeWhereInput.stub(_then(_instance))
        : CopyWith$Input$NoticeWhereInput(local$some, (e) => call(some: e));
  }

  CopyWith$Input$NoticeWhereInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$NoticeWhereInput.stub(_then(_instance))
        : CopyWith$Input$NoticeWhereInput(local$none, (e) => call(none: e));
  }
}

class _CopyWithStubImpl$Input$NoticeManyRelationFilter<TRes>
    implements CopyWith$Input$NoticeManyRelationFilter<TRes> {
  _CopyWithStubImpl$Input$NoticeManyRelationFilter(this._res);

  TRes _res;

  call({
    Input$NoticeWhereInput? every,
    Input$NoticeWhereInput? some,
    Input$NoticeWhereInput? none,
  }) =>
      _res;

  CopyWith$Input$NoticeWhereInput<TRes> get every =>
      CopyWith$Input$NoticeWhereInput.stub(_res);

  CopyWith$Input$NoticeWhereInput<TRes> get some =>
      CopyWith$Input$NoticeWhereInput.stub(_res);

  CopyWith$Input$NoticeWhereInput<TRes> get none =>
      CopyWith$Input$NoticeWhereInput.stub(_res);
}

class Input$ClassTestManyRelationFilter {
  factory Input$ClassTestManyRelationFilter({
    Input$ClassTestWhereInput? every,
    Input$ClassTestWhereInput? some,
    Input$ClassTestWhereInput? none,
  }) =>
      Input$ClassTestManyRelationFilter._({
        if (every != null) r'every': every,
        if (some != null) r'some': some,
        if (none != null) r'none': none,
      });

  Input$ClassTestManyRelationFilter._(this._$data);

  factory Input$ClassTestManyRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('every')) {
      final l$every = data['every'];
      result$data['every'] = l$every == null
          ? null
          : Input$ClassTestWhereInput.fromJson(
              (l$every as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$ClassTestWhereInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$ClassTestWhereInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    return Input$ClassTestManyRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ClassTestWhereInput? get every =>
      (_$data['every'] as Input$ClassTestWhereInput?);

  Input$ClassTestWhereInput? get some =>
      (_$data['some'] as Input$ClassTestWhereInput?);

  Input$ClassTestWhereInput? get none =>
      (_$data['none'] as Input$ClassTestWhereInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('every')) {
      final l$every = every;
      result$data['every'] = l$every?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ClassTestManyRelationFilter<Input$ClassTestManyRelationFilter>
      get copyWith => CopyWith$Input$ClassTestManyRelationFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClassTestManyRelationFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$every = every;
    final lOther$every = other.every;
    if (_$data.containsKey('every') != other._$data.containsKey('every')) {
      return false;
    }
    if (l$every != lOther$every) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$every = every;
    final l$some = some;
    final l$none = none;
    return Object.hashAll([
      _$data.containsKey('every') ? l$every : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('none') ? l$none : const {},
    ]);
  }
}

abstract class CopyWith$Input$ClassTestManyRelationFilter<TRes> {
  factory CopyWith$Input$ClassTestManyRelationFilter(
    Input$ClassTestManyRelationFilter instance,
    TRes Function(Input$ClassTestManyRelationFilter) then,
  ) = _CopyWithImpl$Input$ClassTestManyRelationFilter;

  factory CopyWith$Input$ClassTestManyRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ClassTestManyRelationFilter;

  TRes call({
    Input$ClassTestWhereInput? every,
    Input$ClassTestWhereInput? some,
    Input$ClassTestWhereInput? none,
  });
  CopyWith$Input$ClassTestWhereInput<TRes> get every;
  CopyWith$Input$ClassTestWhereInput<TRes> get some;
  CopyWith$Input$ClassTestWhereInput<TRes> get none;
}

class _CopyWithImpl$Input$ClassTestManyRelationFilter<TRes>
    implements CopyWith$Input$ClassTestManyRelationFilter<TRes> {
  _CopyWithImpl$Input$ClassTestManyRelationFilter(
    this._instance,
    this._then,
  );

  final Input$ClassTestManyRelationFilter _instance;

  final TRes Function(Input$ClassTestManyRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? every = _undefined,
    Object? some = _undefined,
    Object? none = _undefined,
  }) =>
      _then(Input$ClassTestManyRelationFilter._({
        ..._instance._$data,
        if (every != _undefined) 'every': (every as Input$ClassTestWhereInput?),
        if (some != _undefined) 'some': (some as Input$ClassTestWhereInput?),
        if (none != _undefined) 'none': (none as Input$ClassTestWhereInput?),
      }));

  CopyWith$Input$ClassTestWhereInput<TRes> get every {
    final local$every = _instance.every;
    return local$every == null
        ? CopyWith$Input$ClassTestWhereInput.stub(_then(_instance))
        : CopyWith$Input$ClassTestWhereInput(
            local$every, (e) => call(every: e));
  }

  CopyWith$Input$ClassTestWhereInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$ClassTestWhereInput.stub(_then(_instance))
        : CopyWith$Input$ClassTestWhereInput(local$some, (e) => call(some: e));
  }

  CopyWith$Input$ClassTestWhereInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$ClassTestWhereInput.stub(_then(_instance))
        : CopyWith$Input$ClassTestWhereInput(local$none, (e) => call(none: e));
  }
}

class _CopyWithStubImpl$Input$ClassTestManyRelationFilter<TRes>
    implements CopyWith$Input$ClassTestManyRelationFilter<TRes> {
  _CopyWithStubImpl$Input$ClassTestManyRelationFilter(this._res);

  TRes _res;

  call({
    Input$ClassTestWhereInput? every,
    Input$ClassTestWhereInput? some,
    Input$ClassTestWhereInput? none,
  }) =>
      _res;

  CopyWith$Input$ClassTestWhereInput<TRes> get every =>
      CopyWith$Input$ClassTestWhereInput.stub(_res);

  CopyWith$Input$ClassTestWhereInput<TRes> get some =>
      CopyWith$Input$ClassTestWhereInput.stub(_res);

  CopyWith$Input$ClassTestWhereInput<TRes> get none =>
      CopyWith$Input$ClassTestWhereInput.stub(_res);
}

class Input$ExpoTokenManyRelationFilter {
  factory Input$ExpoTokenManyRelationFilter({
    Input$ExpoTokenWhereInput? every,
    Input$ExpoTokenWhereInput? some,
    Input$ExpoTokenWhereInput? none,
  }) =>
      Input$ExpoTokenManyRelationFilter._({
        if (every != null) r'every': every,
        if (some != null) r'some': some,
        if (none != null) r'none': none,
      });

  Input$ExpoTokenManyRelationFilter._(this._$data);

  factory Input$ExpoTokenManyRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('every')) {
      final l$every = data['every'];
      result$data['every'] = l$every == null
          ? null
          : Input$ExpoTokenWhereInput.fromJson(
              (l$every as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$ExpoTokenWhereInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$ExpoTokenWhereInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    return Input$ExpoTokenManyRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ExpoTokenWhereInput? get every =>
      (_$data['every'] as Input$ExpoTokenWhereInput?);

  Input$ExpoTokenWhereInput? get some =>
      (_$data['some'] as Input$ExpoTokenWhereInput?);

  Input$ExpoTokenWhereInput? get none =>
      (_$data['none'] as Input$ExpoTokenWhereInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('every')) {
      final l$every = every;
      result$data['every'] = l$every?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ExpoTokenManyRelationFilter<Input$ExpoTokenManyRelationFilter>
      get copyWith => CopyWith$Input$ExpoTokenManyRelationFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ExpoTokenManyRelationFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$every = every;
    final lOther$every = other.every;
    if (_$data.containsKey('every') != other._$data.containsKey('every')) {
      return false;
    }
    if (l$every != lOther$every) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$every = every;
    final l$some = some;
    final l$none = none;
    return Object.hashAll([
      _$data.containsKey('every') ? l$every : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('none') ? l$none : const {},
    ]);
  }
}

abstract class CopyWith$Input$ExpoTokenManyRelationFilter<TRes> {
  factory CopyWith$Input$ExpoTokenManyRelationFilter(
    Input$ExpoTokenManyRelationFilter instance,
    TRes Function(Input$ExpoTokenManyRelationFilter) then,
  ) = _CopyWithImpl$Input$ExpoTokenManyRelationFilter;

  factory CopyWith$Input$ExpoTokenManyRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ExpoTokenManyRelationFilter;

  TRes call({
    Input$ExpoTokenWhereInput? every,
    Input$ExpoTokenWhereInput? some,
    Input$ExpoTokenWhereInput? none,
  });
  CopyWith$Input$ExpoTokenWhereInput<TRes> get every;
  CopyWith$Input$ExpoTokenWhereInput<TRes> get some;
  CopyWith$Input$ExpoTokenWhereInput<TRes> get none;
}

class _CopyWithImpl$Input$ExpoTokenManyRelationFilter<TRes>
    implements CopyWith$Input$ExpoTokenManyRelationFilter<TRes> {
  _CopyWithImpl$Input$ExpoTokenManyRelationFilter(
    this._instance,
    this._then,
  );

  final Input$ExpoTokenManyRelationFilter _instance;

  final TRes Function(Input$ExpoTokenManyRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? every = _undefined,
    Object? some = _undefined,
    Object? none = _undefined,
  }) =>
      _then(Input$ExpoTokenManyRelationFilter._({
        ..._instance._$data,
        if (every != _undefined) 'every': (every as Input$ExpoTokenWhereInput?),
        if (some != _undefined) 'some': (some as Input$ExpoTokenWhereInput?),
        if (none != _undefined) 'none': (none as Input$ExpoTokenWhereInput?),
      }));

  CopyWith$Input$ExpoTokenWhereInput<TRes> get every {
    final local$every = _instance.every;
    return local$every == null
        ? CopyWith$Input$ExpoTokenWhereInput.stub(_then(_instance))
        : CopyWith$Input$ExpoTokenWhereInput(
            local$every, (e) => call(every: e));
  }

  CopyWith$Input$ExpoTokenWhereInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$ExpoTokenWhereInput.stub(_then(_instance))
        : CopyWith$Input$ExpoTokenWhereInput(local$some, (e) => call(some: e));
  }

  CopyWith$Input$ExpoTokenWhereInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$ExpoTokenWhereInput.stub(_then(_instance))
        : CopyWith$Input$ExpoTokenWhereInput(local$none, (e) => call(none: e));
  }
}

class _CopyWithStubImpl$Input$ExpoTokenManyRelationFilter<TRes>
    implements CopyWith$Input$ExpoTokenManyRelationFilter<TRes> {
  _CopyWithStubImpl$Input$ExpoTokenManyRelationFilter(this._res);

  TRes _res;

  call({
    Input$ExpoTokenWhereInput? every,
    Input$ExpoTokenWhereInput? some,
    Input$ExpoTokenWhereInput? none,
  }) =>
      _res;

  CopyWith$Input$ExpoTokenWhereInput<TRes> get every =>
      CopyWith$Input$ExpoTokenWhereInput.stub(_res);

  CopyWith$Input$ExpoTokenWhereInput<TRes> get some =>
      CopyWith$Input$ExpoTokenWhereInput.stub(_res);

  CopyWith$Input$ExpoTokenWhereInput<TRes> get none =>
      CopyWith$Input$ExpoTokenWhereInput.stub(_res);
}

class Input$UserRoleTypeNullableFilter {
  factory Input$UserRoleTypeNullableFilter({
    Enum$UserRoleType? equals,
    List<Enum$UserRoleType>? $in,
    List<Enum$UserRoleType>? notIn,
    Input$UserRoleTypeNullableFilter? not,
  }) =>
      Input$UserRoleTypeNullableFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (not != null) r'not': not,
      });

  Input$UserRoleTypeNullableFilter._(this._$data);

  factory Input$UserRoleTypeNullableFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = l$equals == null
          ? null
          : fromJson$Enum$UserRoleType((l$equals as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$UserRoleType((e as String)))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => fromJson$Enum$UserRoleType((e as String)))
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$UserRoleTypeNullableFilter.fromJson(
              (l$not as Map<String, dynamic>));
    }
    return Input$UserRoleTypeNullableFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$UserRoleType? get equals => (_$data['equals'] as Enum$UserRoleType?);

  List<Enum$UserRoleType>? get $in =>
      (_$data['in'] as List<Enum$UserRoleType>?);

  List<Enum$UserRoleType>? get notIn =>
      (_$data['notIn'] as List<Enum$UserRoleType>?);

  Input$UserRoleTypeNullableFilter? get not =>
      (_$data['not'] as Input$UserRoleTypeNullableFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] =
          l$equals == null ? null : toJson$Enum$UserRoleType(l$equals);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$UserRoleType(e)).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] =
          l$notIn?.map((e) => toJson$Enum$UserRoleType(e)).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserRoleTypeNullableFilter<Input$UserRoleTypeNullableFilter>
      get copyWith => CopyWith$Input$UserRoleTypeNullableFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserRoleTypeNullableFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$equals = equals;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$not = not;
    return Object.hashAll([
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('not') ? l$not : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserRoleTypeNullableFilter<TRes> {
  factory CopyWith$Input$UserRoleTypeNullableFilter(
    Input$UserRoleTypeNullableFilter instance,
    TRes Function(Input$UserRoleTypeNullableFilter) then,
  ) = _CopyWithImpl$Input$UserRoleTypeNullableFilter;

  factory CopyWith$Input$UserRoleTypeNullableFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$UserRoleTypeNullableFilter;

  TRes call({
    Enum$UserRoleType? equals,
    List<Enum$UserRoleType>? $in,
    List<Enum$UserRoleType>? notIn,
    Input$UserRoleTypeNullableFilter? not,
  });
  CopyWith$Input$UserRoleTypeNullableFilter<TRes> get not;
}

class _CopyWithImpl$Input$UserRoleTypeNullableFilter<TRes>
    implements CopyWith$Input$UserRoleTypeNullableFilter<TRes> {
  _CopyWithImpl$Input$UserRoleTypeNullableFilter(
    this._instance,
    this._then,
  );

  final Input$UserRoleTypeNullableFilter _instance;

  final TRes Function(Input$UserRoleTypeNullableFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? not = _undefined,
  }) =>
      _then(Input$UserRoleTypeNullableFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as Enum$UserRoleType?),
        if ($in != _undefined) 'in': ($in as List<Enum$UserRoleType>?),
        if (notIn != _undefined) 'notIn': (notIn as List<Enum$UserRoleType>?),
        if (not != _undefined)
          'not': (not as Input$UserRoleTypeNullableFilter?),
      }));

  CopyWith$Input$UserRoleTypeNullableFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$UserRoleTypeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$UserRoleTypeNullableFilter(
            local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$UserRoleTypeNullableFilter<TRes>
    implements CopyWith$Input$UserRoleTypeNullableFilter<TRes> {
  _CopyWithStubImpl$Input$UserRoleTypeNullableFilter(this._res);

  TRes _res;

  call({
    Enum$UserRoleType? equals,
    List<Enum$UserRoleType>? $in,
    List<Enum$UserRoleType>? notIn,
    Input$UserRoleTypeNullableFilter? not,
  }) =>
      _res;

  CopyWith$Input$UserRoleTypeNullableFilter<TRes> get not =>
      CopyWith$Input$UserRoleTypeNullableFilter.stub(_res);
}

class Input$DateTimeNullableFilter {
  factory Input$DateTimeNullableFilter({
    DateTime? equals,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    DateTime? lt,
    DateTime? lte,
    DateTime? gt,
    DateTime? gte,
    Input$DateTimeNullableFilter? not,
  }) =>
      Input$DateTimeNullableFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
      });

  Input$DateTimeNullableFilter._(this._$data);

  factory Input$DateTimeNullableFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] =
          l$equals == null ? null : DateTime.parse((l$equals as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : DateTime.parse((l$lt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : DateTime.parse((l$lte as String));
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : DateTime.parse((l$gt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : DateTime.parse((l$gte as String));
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$DateTimeNullableFilter.fromJson(
              (l$not as Map<String, dynamic>));
    }
    return Input$DateTimeNullableFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get equals => (_$data['equals'] as DateTime?);

  List<DateTime>? get $in => (_$data['in'] as List<DateTime>?);

  List<DateTime>? get notIn => (_$data['notIn'] as List<DateTime>?);

  DateTime? get lt => (_$data['lt'] as DateTime?);

  DateTime? get lte => (_$data['lte'] as DateTime?);

  DateTime? get gt => (_$data['gt'] as DateTime?);

  DateTime? get gte => (_$data['gte'] as DateTime?);

  Input$DateTimeNullableFilter? get not =>
      (_$data['not'] as Input$DateTimeNullableFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] = l$equals?.toIso8601String();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e.toIso8601String()).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e.toIso8601String()).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt?.toIso8601String();
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte?.toIso8601String();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt?.toIso8601String();
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte?.toIso8601String();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DateTimeNullableFilter<Input$DateTimeNullableFilter>
      get copyWith => CopyWith$Input$DateTimeNullableFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DateTimeNullableFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$equals = equals;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lt = lt;
    final l$lte = lte;
    final l$gt = gt;
    final l$gte = gte;
    final l$not = not;
    return Object.hashAll([
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('not') ? l$not : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateTimeNullableFilter<TRes> {
  factory CopyWith$Input$DateTimeNullableFilter(
    Input$DateTimeNullableFilter instance,
    TRes Function(Input$DateTimeNullableFilter) then,
  ) = _CopyWithImpl$Input$DateTimeNullableFilter;

  factory CopyWith$Input$DateTimeNullableFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeNullableFilter;

  TRes call({
    DateTime? equals,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    DateTime? lt,
    DateTime? lte,
    DateTime? gt,
    DateTime? gte,
    Input$DateTimeNullableFilter? not,
  });
  CopyWith$Input$DateTimeNullableFilter<TRes> get not;
}

class _CopyWithImpl$Input$DateTimeNullableFilter<TRes>
    implements CopyWith$Input$DateTimeNullableFilter<TRes> {
  _CopyWithImpl$Input$DateTimeNullableFilter(
    this._instance,
    this._then,
  );

  final Input$DateTimeNullableFilter _instance;

  final TRes Function(Input$DateTimeNullableFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? not = _undefined,
  }) =>
      _then(Input$DateTimeNullableFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as DateTime?),
        if ($in != _undefined) 'in': ($in as List<DateTime>?),
        if (notIn != _undefined) 'notIn': (notIn as List<DateTime>?),
        if (lt != _undefined) 'lt': (lt as DateTime?),
        if (lte != _undefined) 'lte': (lte as DateTime?),
        if (gt != _undefined) 'gt': (gt as DateTime?),
        if (gte != _undefined) 'gte': (gte as DateTime?),
        if (not != _undefined) 'not': (not as Input$DateTimeNullableFilter?),
      }));

  CopyWith$Input$DateTimeNullableFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$DateTimeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeNullableFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$DateTimeNullableFilter<TRes>
    implements CopyWith$Input$DateTimeNullableFilter<TRes> {
  _CopyWithStubImpl$Input$DateTimeNullableFilter(this._res);

  TRes _res;

  call({
    DateTime? equals,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    DateTime? lt,
    DateTime? lte,
    DateTime? gt,
    DateTime? gte,
    Input$DateTimeNullableFilter? not,
  }) =>
      _res;

  CopyWith$Input$DateTimeNullableFilter<TRes> get not =>
      CopyWith$Input$DateTimeNullableFilter.stub(_res);
}

class Input$UserOrderByInput {
  factory Input$UserOrderByInput({
    Enum$OrderDirection? id,
    Enum$OrderDirection? name,
    Enum$OrderDirection? email,
    Enum$OrderDirection? role,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  }) =>
      Input$UserOrderByInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        if (role != null) r'role': role,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UserOrderByInput._(this._$data);

  factory Input$UserOrderByInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$OrderDirection((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$OrderDirection((l$name as String));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : fromJson$Enum$OrderDirection((l$email as String));
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = l$role == null
          ? null
          : fromJson$Enum$OrderDirection((l$role as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$OrderDirection((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson$Enum$OrderDirection((l$updatedAt as String));
    }
    return Input$UserOrderByInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderDirection? get id => (_$data['id'] as Enum$OrderDirection?);

  Enum$OrderDirection? get name => (_$data['name'] as Enum$OrderDirection?);

  Enum$OrderDirection? get email => (_$data['email'] as Enum$OrderDirection?);

  Enum$OrderDirection? get role => (_$data['role'] as Enum$OrderDirection?);

  Enum$OrderDirection? get createdAt =>
      (_$data['createdAt'] as Enum$OrderDirection?);

  Enum$OrderDirection? get updatedAt =>
      (_$data['updatedAt'] as Enum$OrderDirection?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] =
          l$id == null ? null : toJson$Enum$OrderDirection(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$OrderDirection(l$name);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] =
          l$email == null ? null : toJson$Enum$OrderDirection(l$email);
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] =
          l$role == null ? null : toJson$Enum$OrderDirection(l$role);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$OrderDirection(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] =
          l$updatedAt == null ? null : toJson$Enum$OrderDirection(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$UserOrderByInput<Input$UserOrderByInput> get copyWith =>
      CopyWith$Input$UserOrderByInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserOrderByInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$role = role;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('role') ? l$role : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserOrderByInput<TRes> {
  factory CopyWith$Input$UserOrderByInput(
    Input$UserOrderByInput instance,
    TRes Function(Input$UserOrderByInput) then,
  ) = _CopyWithImpl$Input$UserOrderByInput;

  factory CopyWith$Input$UserOrderByInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserOrderByInput;

  TRes call({
    Enum$OrderDirection? id,
    Enum$OrderDirection? name,
    Enum$OrderDirection? email,
    Enum$OrderDirection? role,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  });
}

class _CopyWithImpl$Input$UserOrderByInput<TRes>
    implements CopyWith$Input$UserOrderByInput<TRes> {
  _CopyWithImpl$Input$UserOrderByInput(
    this._instance,
    this._then,
  );

  final Input$UserOrderByInput _instance;

  final TRes Function(Input$UserOrderByInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? role = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UserOrderByInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$OrderDirection?),
        if (name != _undefined) 'name': (name as Enum$OrderDirection?),
        if (email != _undefined) 'email': (email as Enum$OrderDirection?),
        if (role != _undefined) 'role': (role as Enum$OrderDirection?),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Enum$OrderDirection?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Enum$OrderDirection?),
      }));
}

class _CopyWithStubImpl$Input$UserOrderByInput<TRes>
    implements CopyWith$Input$UserOrderByInput<TRes> {
  _CopyWithStubImpl$Input$UserOrderByInput(this._res);

  TRes _res;

  call({
    Enum$OrderDirection? id,
    Enum$OrderDirection? name,
    Enum$OrderDirection? email,
    Enum$OrderDirection? role,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  }) =>
      _res;
}

class Input$UserUpdateInput {
  factory Input$UserUpdateInput({
    required String password,
    Input$NoticeRelateToManyForUpdateInput? notices,
    Input$ClassTestRelateToManyForUpdateInput? classTests,
    Input$ExpoTokenRelateToManyForUpdateInput? tokens,
    Enum$UserRoleType? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Input$UserUpdateInput._({
        r'password': password,
        if (notices != null) r'notices': notices,
        if (classTests != null) r'classTests': classTests,
        if (tokens != null) r'tokens': tokens,
        if (role != null) r'role': role,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UserUpdateInput._(this._$data);

  factory Input$UserUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    if (data.containsKey('notices')) {
      final l$notices = data['notices'];
      result$data['notices'] = l$notices == null
          ? null
          : Input$NoticeRelateToManyForUpdateInput.fromJson(
              (l$notices as Map<String, dynamic>));
    }
    if (data.containsKey('classTests')) {
      final l$classTests = data['classTests'];
      result$data['classTests'] = l$classTests == null
          ? null
          : Input$ClassTestRelateToManyForUpdateInput.fromJson(
              (l$classTests as Map<String, dynamic>));
    }
    if (data.containsKey('tokens')) {
      final l$tokens = data['tokens'];
      result$data['tokens'] = l$tokens == null
          ? null
          : Input$ExpoTokenRelateToManyForUpdateInput.fromJson(
              (l$tokens as Map<String, dynamic>));
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = l$role == null
          ? null
          : fromJson$Enum$UserRoleType((l$role as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    return Input$UserUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get password => (_$data['password'] as String);

  Input$NoticeRelateToManyForUpdateInput? get notices =>
      (_$data['notices'] as Input$NoticeRelateToManyForUpdateInput?);

  Input$ClassTestRelateToManyForUpdateInput? get classTests =>
      (_$data['classTests'] as Input$ClassTestRelateToManyForUpdateInput?);

  Input$ExpoTokenRelateToManyForUpdateInput? get tokens =>
      (_$data['tokens'] as Input$ExpoTokenRelateToManyForUpdateInput?);

  Enum$UserRoleType? get role => (_$data['role'] as Enum$UserRoleType?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$password = password;
    result$data['password'] = l$password;
    if (_$data.containsKey('notices')) {
      final l$notices = notices;
      result$data['notices'] = l$notices?.toJson();
    }
    if (_$data.containsKey('classTests')) {
      final l$classTests = classTests;
      result$data['classTests'] = l$classTests?.toJson();
    }
    if (_$data.containsKey('tokens')) {
      final l$tokens = tokens;
      result$data['tokens'] = l$tokens?.toJson();
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] =
          l$role == null ? null : toJson$Enum$UserRoleType(l$role);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$UserUpdateInput<Input$UserUpdateInput> get copyWith =>
      CopyWith$Input$UserUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserUpdateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$notices = notices;
    final lOther$notices = other.notices;
    if (_$data.containsKey('notices') != other._$data.containsKey('notices')) {
      return false;
    }
    if (l$notices != lOther$notices) {
      return false;
    }
    final l$classTests = classTests;
    final lOther$classTests = other.classTests;
    if (_$data.containsKey('classTests') !=
        other._$data.containsKey('classTests')) {
      return false;
    }
    if (l$classTests != lOther$classTests) {
      return false;
    }
    final l$tokens = tokens;
    final lOther$tokens = other.tokens;
    if (_$data.containsKey('tokens') != other._$data.containsKey('tokens')) {
      return false;
    }
    if (l$tokens != lOther$tokens) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$password = password;
    final l$notices = notices;
    final l$classTests = classTests;
    final l$tokens = tokens;
    final l$role = role;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      l$password,
      _$data.containsKey('notices') ? l$notices : const {},
      _$data.containsKey('classTests') ? l$classTests : const {},
      _$data.containsKey('tokens') ? l$tokens : const {},
      _$data.containsKey('role') ? l$role : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserUpdateInput<TRes> {
  factory CopyWith$Input$UserUpdateInput(
    Input$UserUpdateInput instance,
    TRes Function(Input$UserUpdateInput) then,
  ) = _CopyWithImpl$Input$UserUpdateInput;

  factory CopyWith$Input$UserUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserUpdateInput;

  TRes call({
    String? password,
    Input$NoticeRelateToManyForUpdateInput? notices,
    Input$ClassTestRelateToManyForUpdateInput? classTests,
    Input$ExpoTokenRelateToManyForUpdateInput? tokens,
    Enum$UserRoleType? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  CopyWith$Input$NoticeRelateToManyForUpdateInput<TRes> get notices;
  CopyWith$Input$ClassTestRelateToManyForUpdateInput<TRes> get classTests;
  CopyWith$Input$ExpoTokenRelateToManyForUpdateInput<TRes> get tokens;
}

class _CopyWithImpl$Input$UserUpdateInput<TRes>
    implements CopyWith$Input$UserUpdateInput<TRes> {
  _CopyWithImpl$Input$UserUpdateInput(
    this._instance,
    this._then,
  );

  final Input$UserUpdateInput _instance;

  final TRes Function(Input$UserUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? password = _undefined,
    Object? notices = _undefined,
    Object? classTests = _undefined,
    Object? tokens = _undefined,
    Object? role = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UserUpdateInput._({
        ..._instance._$data,
        if (password != _undefined && password != null)
          'password': (password as String),
        if (notices != _undefined)
          'notices': (notices as Input$NoticeRelateToManyForUpdateInput?),
        if (classTests != _undefined)
          'classTests':
              (classTests as Input$ClassTestRelateToManyForUpdateInput?),
        if (tokens != _undefined)
          'tokens': (tokens as Input$ExpoTokenRelateToManyForUpdateInput?),
        if (role != _undefined) 'role': (role as Enum$UserRoleType?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      }));

  CopyWith$Input$NoticeRelateToManyForUpdateInput<TRes> get notices {
    final local$notices = _instance.notices;
    return local$notices == null
        ? CopyWith$Input$NoticeRelateToManyForUpdateInput.stub(_then(_instance))
        : CopyWith$Input$NoticeRelateToManyForUpdateInput(
            local$notices, (e) => call(notices: e));
  }

  CopyWith$Input$ClassTestRelateToManyForUpdateInput<TRes> get classTests {
    final local$classTests = _instance.classTests;
    return local$classTests == null
        ? CopyWith$Input$ClassTestRelateToManyForUpdateInput.stub(
            _then(_instance))
        : CopyWith$Input$ClassTestRelateToManyForUpdateInput(
            local$classTests, (e) => call(classTests: e));
  }

  CopyWith$Input$ExpoTokenRelateToManyForUpdateInput<TRes> get tokens {
    final local$tokens = _instance.tokens;
    return local$tokens == null
        ? CopyWith$Input$ExpoTokenRelateToManyForUpdateInput.stub(
            _then(_instance))
        : CopyWith$Input$ExpoTokenRelateToManyForUpdateInput(
            local$tokens, (e) => call(tokens: e));
  }
}

class _CopyWithStubImpl$Input$UserUpdateInput<TRes>
    implements CopyWith$Input$UserUpdateInput<TRes> {
  _CopyWithStubImpl$Input$UserUpdateInput(this._res);

  TRes _res;

  call({
    String? password,
    Input$NoticeRelateToManyForUpdateInput? notices,
    Input$ClassTestRelateToManyForUpdateInput? classTests,
    Input$ExpoTokenRelateToManyForUpdateInput? tokens,
    Enum$UserRoleType? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      _res;

  CopyWith$Input$NoticeRelateToManyForUpdateInput<TRes> get notices =>
      CopyWith$Input$NoticeRelateToManyForUpdateInput.stub(_res);

  CopyWith$Input$ClassTestRelateToManyForUpdateInput<TRes> get classTests =>
      CopyWith$Input$ClassTestRelateToManyForUpdateInput.stub(_res);

  CopyWith$Input$ExpoTokenRelateToManyForUpdateInput<TRes> get tokens =>
      CopyWith$Input$ExpoTokenRelateToManyForUpdateInput.stub(_res);
}

class Input$NoticeRelateToManyForUpdateInput {
  factory Input$NoticeRelateToManyForUpdateInput({
    List<Input$NoticeWhereUniqueInput>? disconnect,
    List<Input$NoticeWhereUniqueInput>? $set,
    List<Input$NoticeCreateInput>? create,
    List<Input$NoticeWhereUniqueInput>? connect,
  }) =>
      Input$NoticeRelateToManyForUpdateInput._({
        if (disconnect != null) r'disconnect': disconnect,
        if ($set != null) r'set': $set,
        if (create != null) r'create': create,
        if (connect != null) r'connect': connect,
      });

  Input$NoticeRelateToManyForUpdateInput._(this._$data);

  factory Input$NoticeRelateToManyForUpdateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$NoticeWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$NoticeWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) =>
              Input$NoticeCreateInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$NoticeWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$NoticeRelateToManyForUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$NoticeWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$NoticeWhereUniqueInput>?);

  List<Input$NoticeWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$NoticeWhereUniqueInput>?);

  List<Input$NoticeCreateInput>? get create =>
      (_$data['create'] as List<Input$NoticeCreateInput>?);

  List<Input$NoticeWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$NoticeWhereUniqueInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$NoticeRelateToManyForUpdateInput<
          Input$NoticeRelateToManyForUpdateInput>
      get copyWith => CopyWith$Input$NoticeRelateToManyForUpdateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NoticeRelateToManyForUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$disconnect = disconnect;
    final l$$set = $set;
    final l$create = create;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$NoticeRelateToManyForUpdateInput<TRes> {
  factory CopyWith$Input$NoticeRelateToManyForUpdateInput(
    Input$NoticeRelateToManyForUpdateInput instance,
    TRes Function(Input$NoticeRelateToManyForUpdateInput) then,
  ) = _CopyWithImpl$Input$NoticeRelateToManyForUpdateInput;

  factory CopyWith$Input$NoticeRelateToManyForUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NoticeRelateToManyForUpdateInput;

  TRes call({
    List<Input$NoticeWhereUniqueInput>? disconnect,
    List<Input$NoticeWhereUniqueInput>? $set,
    List<Input$NoticeCreateInput>? create,
    List<Input$NoticeWhereUniqueInput>? connect,
  });
  TRes disconnect(
      Iterable<Input$NoticeWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$NoticeWhereUniqueInput<
                      Input$NoticeWhereUniqueInput>>?)
          _fn);
  TRes $set(
      Iterable<Input$NoticeWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$NoticeWhereUniqueInput<
                      Input$NoticeWhereUniqueInput>>?)
          _fn);
  TRes create(
      Iterable<Input$NoticeCreateInput>? Function(
              Iterable<
                  CopyWith$Input$NoticeCreateInput<Input$NoticeCreateInput>>?)
          _fn);
  TRes connect(
      Iterable<Input$NoticeWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$NoticeWhereUniqueInput<
                      Input$NoticeWhereUniqueInput>>?)
          _fn);
}

class _CopyWithImpl$Input$NoticeRelateToManyForUpdateInput<TRes>
    implements CopyWith$Input$NoticeRelateToManyForUpdateInput<TRes> {
  _CopyWithImpl$Input$NoticeRelateToManyForUpdateInput(
    this._instance,
    this._then,
  );

  final Input$NoticeRelateToManyForUpdateInput _instance;

  final TRes Function(Input$NoticeRelateToManyForUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? disconnect = _undefined,
    Object? $set = _undefined,
    Object? create = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$NoticeRelateToManyForUpdateInput._({
        ..._instance._$data,
        if (disconnect != _undefined)
          'disconnect': (disconnect as List<Input$NoticeWhereUniqueInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$NoticeWhereUniqueInput>?),
        if (create != _undefined)
          'create': (create as List<Input$NoticeCreateInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$NoticeWhereUniqueInput>?),
      }));

  TRes disconnect(
          Iterable<Input$NoticeWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$NoticeWhereUniqueInput<
                          Input$NoticeWhereUniqueInput>>?)
              _fn) =>
      call(
          disconnect: _fn(_instance.disconnect
              ?.map((e) => CopyWith$Input$NoticeWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes $set(
          Iterable<Input$NoticeWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$NoticeWhereUniqueInput<
                          Input$NoticeWhereUniqueInput>>?)
              _fn) =>
      call(
          $set: _fn(
              _instance.$set?.map((e) => CopyWith$Input$NoticeWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes create(
          Iterable<Input$NoticeCreateInput>? Function(
                  Iterable<
                      CopyWith$Input$NoticeCreateInput<
                          Input$NoticeCreateInput>>?)
              _fn) =>
      call(
          create:
              _fn(_instance.create?.map((e) => CopyWith$Input$NoticeCreateInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes connect(
          Iterable<Input$NoticeWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$NoticeWhereUniqueInput<
                          Input$NoticeWhereUniqueInput>>?)
              _fn) =>
      call(
          connect: _fn(_instance.connect
              ?.map((e) => CopyWith$Input$NoticeWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$NoticeRelateToManyForUpdateInput<TRes>
    implements CopyWith$Input$NoticeRelateToManyForUpdateInput<TRes> {
  _CopyWithStubImpl$Input$NoticeRelateToManyForUpdateInput(this._res);

  TRes _res;

  call({
    List<Input$NoticeWhereUniqueInput>? disconnect,
    List<Input$NoticeWhereUniqueInput>? $set,
    List<Input$NoticeCreateInput>? create,
    List<Input$NoticeWhereUniqueInput>? connect,
  }) =>
      _res;

  disconnect(_fn) => _res;

  $set(_fn) => _res;

  create(_fn) => _res;

  connect(_fn) => _res;
}

class Input$ClassTestRelateToManyForUpdateInput {
  factory Input$ClassTestRelateToManyForUpdateInput({
    List<Input$ClassTestWhereUniqueInput>? disconnect,
    List<Input$ClassTestWhereUniqueInput>? $set,
    List<Input$ClassTestCreateInput>? create,
    List<Input$ClassTestWhereUniqueInput>? connect,
  }) =>
      Input$ClassTestRelateToManyForUpdateInput._({
        if (disconnect != null) r'disconnect': disconnect,
        if ($set != null) r'set': $set,
        if (create != null) r'create': create,
        if (connect != null) r'connect': connect,
      });

  Input$ClassTestRelateToManyForUpdateInput._(this._$data);

  factory Input$ClassTestRelateToManyForUpdateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$ClassTestWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$ClassTestWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) =>
              Input$ClassTestCreateInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ClassTestWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ClassTestRelateToManyForUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ClassTestWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$ClassTestWhereUniqueInput>?);

  List<Input$ClassTestWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$ClassTestWhereUniqueInput>?);

  List<Input$ClassTestCreateInput>? get create =>
      (_$data['create'] as List<Input$ClassTestCreateInput>?);

  List<Input$ClassTestWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ClassTestWhereUniqueInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ClassTestRelateToManyForUpdateInput<
          Input$ClassTestRelateToManyForUpdateInput>
      get copyWith => CopyWith$Input$ClassTestRelateToManyForUpdateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClassTestRelateToManyForUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$disconnect = disconnect;
    final l$$set = $set;
    final l$create = create;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ClassTestRelateToManyForUpdateInput<TRes> {
  factory CopyWith$Input$ClassTestRelateToManyForUpdateInput(
    Input$ClassTestRelateToManyForUpdateInput instance,
    TRes Function(Input$ClassTestRelateToManyForUpdateInput) then,
  ) = _CopyWithImpl$Input$ClassTestRelateToManyForUpdateInput;

  factory CopyWith$Input$ClassTestRelateToManyForUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ClassTestRelateToManyForUpdateInput;

  TRes call({
    List<Input$ClassTestWhereUniqueInput>? disconnect,
    List<Input$ClassTestWhereUniqueInput>? $set,
    List<Input$ClassTestCreateInput>? create,
    List<Input$ClassTestWhereUniqueInput>? connect,
  });
  TRes disconnect(
      Iterable<Input$ClassTestWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$ClassTestWhereUniqueInput<
                      Input$ClassTestWhereUniqueInput>>?)
          _fn);
  TRes $set(
      Iterable<Input$ClassTestWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$ClassTestWhereUniqueInput<
                      Input$ClassTestWhereUniqueInput>>?)
          _fn);
  TRes create(
      Iterable<Input$ClassTestCreateInput>? Function(
              Iterable<
                  CopyWith$Input$ClassTestCreateInput<
                      Input$ClassTestCreateInput>>?)
          _fn);
  TRes connect(
      Iterable<Input$ClassTestWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$ClassTestWhereUniqueInput<
                      Input$ClassTestWhereUniqueInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ClassTestRelateToManyForUpdateInput<TRes>
    implements CopyWith$Input$ClassTestRelateToManyForUpdateInput<TRes> {
  _CopyWithImpl$Input$ClassTestRelateToManyForUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ClassTestRelateToManyForUpdateInput _instance;

  final TRes Function(Input$ClassTestRelateToManyForUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? disconnect = _undefined,
    Object? $set = _undefined,
    Object? create = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ClassTestRelateToManyForUpdateInput._({
        ..._instance._$data,
        if (disconnect != _undefined)
          'disconnect': (disconnect as List<Input$ClassTestWhereUniqueInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$ClassTestWhereUniqueInput>?),
        if (create != _undefined)
          'create': (create as List<Input$ClassTestCreateInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ClassTestWhereUniqueInput>?),
      }));

  TRes disconnect(
          Iterable<Input$ClassTestWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$ClassTestWhereUniqueInput<
                          Input$ClassTestWhereUniqueInput>>?)
              _fn) =>
      call(
          disconnect: _fn(_instance.disconnect
              ?.map((e) => CopyWith$Input$ClassTestWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes $set(
          Iterable<Input$ClassTestWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$ClassTestWhereUniqueInput<
                          Input$ClassTestWhereUniqueInput>>?)
              _fn) =>
      call(
          $set: _fn(_instance.$set
              ?.map((e) => CopyWith$Input$ClassTestWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes create(
          Iterable<Input$ClassTestCreateInput>? Function(
                  Iterable<
                      CopyWith$Input$ClassTestCreateInput<
                          Input$ClassTestCreateInput>>?)
              _fn) =>
      call(
          create: _fn(
              _instance.create?.map((e) => CopyWith$Input$ClassTestCreateInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes connect(
          Iterable<Input$ClassTestWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$ClassTestWhereUniqueInput<
                          Input$ClassTestWhereUniqueInput>>?)
              _fn) =>
      call(
          connect: _fn(_instance.connect
              ?.map((e) => CopyWith$Input$ClassTestWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ClassTestRelateToManyForUpdateInput<TRes>
    implements CopyWith$Input$ClassTestRelateToManyForUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ClassTestRelateToManyForUpdateInput(this._res);

  TRes _res;

  call({
    List<Input$ClassTestWhereUniqueInput>? disconnect,
    List<Input$ClassTestWhereUniqueInput>? $set,
    List<Input$ClassTestCreateInput>? create,
    List<Input$ClassTestWhereUniqueInput>? connect,
  }) =>
      _res;

  disconnect(_fn) => _res;

  $set(_fn) => _res;

  create(_fn) => _res;

  connect(_fn) => _res;
}

class Input$ExpoTokenRelateToManyForUpdateInput {
  factory Input$ExpoTokenRelateToManyForUpdateInput({
    List<Input$ExpoTokenWhereUniqueInput>? disconnect,
    List<Input$ExpoTokenWhereUniqueInput>? $set,
    List<Input$ExpoTokenWhereUniqueInput>? connect,
  }) =>
      Input$ExpoTokenRelateToManyForUpdateInput._({
        if (disconnect != null) r'disconnect': disconnect,
        if ($set != null) r'set': $set,
        if (connect != null) r'connect': connect,
      });

  Input$ExpoTokenRelateToManyForUpdateInput._(this._$data);

  factory Input$ExpoTokenRelateToManyForUpdateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$ExpoTokenWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$ExpoTokenWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ExpoTokenWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ExpoTokenRelateToManyForUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ExpoTokenWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$ExpoTokenWhereUniqueInput>?);

  List<Input$ExpoTokenWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$ExpoTokenWhereUniqueInput>?);

  List<Input$ExpoTokenWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ExpoTokenWhereUniqueInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ExpoTokenRelateToManyForUpdateInput<
          Input$ExpoTokenRelateToManyForUpdateInput>
      get copyWith => CopyWith$Input$ExpoTokenRelateToManyForUpdateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ExpoTokenRelateToManyForUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$disconnect = disconnect;
    final l$$set = $set;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ExpoTokenRelateToManyForUpdateInput<TRes> {
  factory CopyWith$Input$ExpoTokenRelateToManyForUpdateInput(
    Input$ExpoTokenRelateToManyForUpdateInput instance,
    TRes Function(Input$ExpoTokenRelateToManyForUpdateInput) then,
  ) = _CopyWithImpl$Input$ExpoTokenRelateToManyForUpdateInput;

  factory CopyWith$Input$ExpoTokenRelateToManyForUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ExpoTokenRelateToManyForUpdateInput;

  TRes call({
    List<Input$ExpoTokenWhereUniqueInput>? disconnect,
    List<Input$ExpoTokenWhereUniqueInput>? $set,
    List<Input$ExpoTokenWhereUniqueInput>? connect,
  });
  TRes disconnect(
      Iterable<Input$ExpoTokenWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$ExpoTokenWhereUniqueInput<
                      Input$ExpoTokenWhereUniqueInput>>?)
          _fn);
  TRes $set(
      Iterable<Input$ExpoTokenWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$ExpoTokenWhereUniqueInput<
                      Input$ExpoTokenWhereUniqueInput>>?)
          _fn);
  TRes connect(
      Iterable<Input$ExpoTokenWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$ExpoTokenWhereUniqueInput<
                      Input$ExpoTokenWhereUniqueInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ExpoTokenRelateToManyForUpdateInput<TRes>
    implements CopyWith$Input$ExpoTokenRelateToManyForUpdateInput<TRes> {
  _CopyWithImpl$Input$ExpoTokenRelateToManyForUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ExpoTokenRelateToManyForUpdateInput _instance;

  final TRes Function(Input$ExpoTokenRelateToManyForUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? disconnect = _undefined,
    Object? $set = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ExpoTokenRelateToManyForUpdateInput._({
        ..._instance._$data,
        if (disconnect != _undefined)
          'disconnect': (disconnect as List<Input$ExpoTokenWhereUniqueInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$ExpoTokenWhereUniqueInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ExpoTokenWhereUniqueInput>?),
      }));

  TRes disconnect(
          Iterable<Input$ExpoTokenWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$ExpoTokenWhereUniqueInput<
                          Input$ExpoTokenWhereUniqueInput>>?)
              _fn) =>
      call(
          disconnect: _fn(_instance.disconnect
              ?.map((e) => CopyWith$Input$ExpoTokenWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes $set(
          Iterable<Input$ExpoTokenWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$ExpoTokenWhereUniqueInput<
                          Input$ExpoTokenWhereUniqueInput>>?)
              _fn) =>
      call(
          $set: _fn(_instance.$set
              ?.map((e) => CopyWith$Input$ExpoTokenWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes connect(
          Iterable<Input$ExpoTokenWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$ExpoTokenWhereUniqueInput<
                          Input$ExpoTokenWhereUniqueInput>>?)
              _fn) =>
      call(
          connect: _fn(_instance.connect
              ?.map((e) => CopyWith$Input$ExpoTokenWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ExpoTokenRelateToManyForUpdateInput<TRes>
    implements CopyWith$Input$ExpoTokenRelateToManyForUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ExpoTokenRelateToManyForUpdateInput(this._res);

  TRes _res;

  call({
    List<Input$ExpoTokenWhereUniqueInput>? disconnect,
    List<Input$ExpoTokenWhereUniqueInput>? $set,
    List<Input$ExpoTokenWhereUniqueInput>? connect,
  }) =>
      _res;

  disconnect(_fn) => _res;

  $set(_fn) => _res;

  connect(_fn) => _res;
}

class Input$UserUpdateArgs {
  factory Input$UserUpdateArgs({
    required Input$UserWhereUniqueInput where,
    required Input$UserUpdateInput data,
  }) =>
      Input$UserUpdateArgs._({
        r'where': where,
        r'data': data,
      });

  Input$UserUpdateArgs._(this._$data);

  factory Input$UserUpdateArgs.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] =
        Input$UserWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] =
        Input$UserUpdateInput.fromJson((l$data as Map<String, dynamic>));
    return Input$UserUpdateArgs._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserWhereUniqueInput get where =>
      (_$data['where'] as Input$UserWhereUniqueInput);

  Input$UserUpdateInput get data => (_$data['data'] as Input$UserUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$UserUpdateArgs<Input$UserUpdateArgs> get copyWith =>
      CopyWith$Input$UserUpdateArgs(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserUpdateArgs || runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
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
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$UserUpdateArgs<TRes> {
  factory CopyWith$Input$UserUpdateArgs(
    Input$UserUpdateArgs instance,
    TRes Function(Input$UserUpdateArgs) then,
  ) = _CopyWithImpl$Input$UserUpdateArgs;

  factory CopyWith$Input$UserUpdateArgs.stub(TRes res) =
      _CopyWithStubImpl$Input$UserUpdateArgs;

  TRes call({
    Input$UserWhereUniqueInput? where,
    Input$UserUpdateInput? data,
  });
  CopyWith$Input$UserWhereUniqueInput<TRes> get where;
  CopyWith$Input$UserUpdateInput<TRes> get data;
}

class _CopyWithImpl$Input$UserUpdateArgs<TRes>
    implements CopyWith$Input$UserUpdateArgs<TRes> {
  _CopyWithImpl$Input$UserUpdateArgs(
    this._instance,
    this._then,
  );

  final Input$UserUpdateArgs _instance;

  final TRes Function(Input$UserUpdateArgs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$UserUpdateArgs._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$UserWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$UserUpdateInput),
      }));

  CopyWith$Input$UserWhereUniqueInput<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$UserWhereUniqueInput(
        local$where, (e) => call(where: e));
  }

  CopyWith$Input$UserUpdateInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$UserUpdateInput(local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$UserUpdateArgs<TRes>
    implements CopyWith$Input$UserUpdateArgs<TRes> {
  _CopyWithStubImpl$Input$UserUpdateArgs(this._res);

  TRes _res;

  call({
    Input$UserWhereUniqueInput? where,
    Input$UserUpdateInput? data,
  }) =>
      _res;

  CopyWith$Input$UserWhereUniqueInput<TRes> get where =>
      CopyWith$Input$UserWhereUniqueInput.stub(_res);

  CopyWith$Input$UserUpdateInput<TRes> get data =>
      CopyWith$Input$UserUpdateInput.stub(_res);
}

class Input$UserCreateInput {
  factory Input$UserCreateInput({
    String? name,
    String? email,
    required String password,
    Input$NoticeRelateToManyForCreateInput? notices,
    Input$ClassTestRelateToManyForCreateInput? classTests,
    Input$ExpoTokenRelateToManyForCreateInput? tokens,
    Enum$UserRoleType? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Input$UserCreateInput._({
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        r'password': password,
        if (notices != null) r'notices': notices,
        if (classTests != null) r'classTests': classTests,
        if (tokens != null) r'tokens': tokens,
        if (role != null) r'role': role,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UserCreateInput._(this._$data);

  factory Input$UserCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String);
    }
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    if (data.containsKey('notices')) {
      final l$notices = data['notices'];
      result$data['notices'] = l$notices == null
          ? null
          : Input$NoticeRelateToManyForCreateInput.fromJson(
              (l$notices as Map<String, dynamic>));
    }
    if (data.containsKey('classTests')) {
      final l$classTests = data['classTests'];
      result$data['classTests'] = l$classTests == null
          ? null
          : Input$ClassTestRelateToManyForCreateInput.fromJson(
              (l$classTests as Map<String, dynamic>));
    }
    if (data.containsKey('tokens')) {
      final l$tokens = data['tokens'];
      result$data['tokens'] = l$tokens == null
          ? null
          : Input$ExpoTokenRelateToManyForCreateInput.fromJson(
              (l$tokens as Map<String, dynamic>));
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = l$role == null
          ? null
          : fromJson$Enum$UserRoleType((l$role as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    return Input$UserCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get email => (_$data['email'] as String?);

  String get password => (_$data['password'] as String);

  Input$NoticeRelateToManyForCreateInput? get notices =>
      (_$data['notices'] as Input$NoticeRelateToManyForCreateInput?);

  Input$ClassTestRelateToManyForCreateInput? get classTests =>
      (_$data['classTests'] as Input$ClassTestRelateToManyForCreateInput?);

  Input$ExpoTokenRelateToManyForCreateInput? get tokens =>
      (_$data['tokens'] as Input$ExpoTokenRelateToManyForCreateInput?);

  Enum$UserRoleType? get role => (_$data['role'] as Enum$UserRoleType?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = (l$name as String);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = (l$email as String);
    }
    final l$password = password;
    result$data['password'] = l$password;
    if (_$data.containsKey('notices')) {
      final l$notices = notices;
      result$data['notices'] = l$notices?.toJson();
    }
    if (_$data.containsKey('classTests')) {
      final l$classTests = classTests;
      result$data['classTests'] = l$classTests?.toJson();
    }
    if (_$data.containsKey('tokens')) {
      final l$tokens = tokens;
      result$data['tokens'] = l$tokens?.toJson();
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] =
          l$role == null ? null : toJson$Enum$UserRoleType(l$role);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$UserCreateInput<Input$UserCreateInput> get copyWith =>
      CopyWith$Input$UserCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserCreateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$notices = notices;
    final lOther$notices = other.notices;
    if (_$data.containsKey('notices') != other._$data.containsKey('notices')) {
      return false;
    }
    if (l$notices != lOther$notices) {
      return false;
    }
    final l$classTests = classTests;
    final lOther$classTests = other.classTests;
    if (_$data.containsKey('classTests') !=
        other._$data.containsKey('classTests')) {
      return false;
    }
    if (l$classTests != lOther$classTests) {
      return false;
    }
    final l$tokens = tokens;
    final lOther$tokens = other.tokens;
    if (_$data.containsKey('tokens') != other._$data.containsKey('tokens')) {
      return false;
    }
    if (l$tokens != lOther$tokens) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$password = password;
    final l$notices = notices;
    final l$classTests = classTests;
    final l$tokens = tokens;
    final l$role = role;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      l$password,
      _$data.containsKey('notices') ? l$notices : const {},
      _$data.containsKey('classTests') ? l$classTests : const {},
      _$data.containsKey('tokens') ? l$tokens : const {},
      _$data.containsKey('role') ? l$role : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserCreateInput<TRes> {
  factory CopyWith$Input$UserCreateInput(
    Input$UserCreateInput instance,
    TRes Function(Input$UserCreateInput) then,
  ) = _CopyWithImpl$Input$UserCreateInput;

  factory CopyWith$Input$UserCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserCreateInput;

  TRes call({
    String? name,
    String? email,
    String? password,
    Input$NoticeRelateToManyForCreateInput? notices,
    Input$ClassTestRelateToManyForCreateInput? classTests,
    Input$ExpoTokenRelateToManyForCreateInput? tokens,
    Enum$UserRoleType? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  CopyWith$Input$NoticeRelateToManyForCreateInput<TRes> get notices;
  CopyWith$Input$ClassTestRelateToManyForCreateInput<TRes> get classTests;
  CopyWith$Input$ExpoTokenRelateToManyForCreateInput<TRes> get tokens;
}

class _CopyWithImpl$Input$UserCreateInput<TRes>
    implements CopyWith$Input$UserCreateInput<TRes> {
  _CopyWithImpl$Input$UserCreateInput(
    this._instance,
    this._then,
  );

  final Input$UserCreateInput _instance;

  final TRes Function(Input$UserCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
    Object? notices = _undefined,
    Object? classTests = _undefined,
    Object? tokens = _undefined,
    Object? role = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UserCreateInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (notices != _undefined)
          'notices': (notices as Input$NoticeRelateToManyForCreateInput?),
        if (classTests != _undefined)
          'classTests':
              (classTests as Input$ClassTestRelateToManyForCreateInput?),
        if (tokens != _undefined)
          'tokens': (tokens as Input$ExpoTokenRelateToManyForCreateInput?),
        if (role != _undefined) 'role': (role as Enum$UserRoleType?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      }));

  CopyWith$Input$NoticeRelateToManyForCreateInput<TRes> get notices {
    final local$notices = _instance.notices;
    return local$notices == null
        ? CopyWith$Input$NoticeRelateToManyForCreateInput.stub(_then(_instance))
        : CopyWith$Input$NoticeRelateToManyForCreateInput(
            local$notices, (e) => call(notices: e));
  }

  CopyWith$Input$ClassTestRelateToManyForCreateInput<TRes> get classTests {
    final local$classTests = _instance.classTests;
    return local$classTests == null
        ? CopyWith$Input$ClassTestRelateToManyForCreateInput.stub(
            _then(_instance))
        : CopyWith$Input$ClassTestRelateToManyForCreateInput(
            local$classTests, (e) => call(classTests: e));
  }

  CopyWith$Input$ExpoTokenRelateToManyForCreateInput<TRes> get tokens {
    final local$tokens = _instance.tokens;
    return local$tokens == null
        ? CopyWith$Input$ExpoTokenRelateToManyForCreateInput.stub(
            _then(_instance))
        : CopyWith$Input$ExpoTokenRelateToManyForCreateInput(
            local$tokens, (e) => call(tokens: e));
  }
}

class _CopyWithStubImpl$Input$UserCreateInput<TRes>
    implements CopyWith$Input$UserCreateInput<TRes> {
  _CopyWithStubImpl$Input$UserCreateInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? password,
    Input$NoticeRelateToManyForCreateInput? notices,
    Input$ClassTestRelateToManyForCreateInput? classTests,
    Input$ExpoTokenRelateToManyForCreateInput? tokens,
    Enum$UserRoleType? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      _res;

  CopyWith$Input$NoticeRelateToManyForCreateInput<TRes> get notices =>
      CopyWith$Input$NoticeRelateToManyForCreateInput.stub(_res);

  CopyWith$Input$ClassTestRelateToManyForCreateInput<TRes> get classTests =>
      CopyWith$Input$ClassTestRelateToManyForCreateInput.stub(_res);

  CopyWith$Input$ExpoTokenRelateToManyForCreateInput<TRes> get tokens =>
      CopyWith$Input$ExpoTokenRelateToManyForCreateInput.stub(_res);
}

class Input$NoticeRelateToManyForCreateInput {
  factory Input$NoticeRelateToManyForCreateInput({
    List<Input$NoticeCreateInput>? create,
    List<Input$NoticeWhereUniqueInput>? connect,
  }) =>
      Input$NoticeRelateToManyForCreateInput._({
        if (create != null) r'create': create,
        if (connect != null) r'connect': connect,
      });

  Input$NoticeRelateToManyForCreateInput._(this._$data);

  factory Input$NoticeRelateToManyForCreateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) =>
              Input$NoticeCreateInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$NoticeWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$NoticeRelateToManyForCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$NoticeCreateInput>? get create =>
      (_$data['create'] as List<Input$NoticeCreateInput>?);

  List<Input$NoticeWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$NoticeWhereUniqueInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$NoticeRelateToManyForCreateInput<
          Input$NoticeRelateToManyForCreateInput>
      get copyWith => CopyWith$Input$NoticeRelateToManyForCreateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NoticeRelateToManyForCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$NoticeRelateToManyForCreateInput<TRes> {
  factory CopyWith$Input$NoticeRelateToManyForCreateInput(
    Input$NoticeRelateToManyForCreateInput instance,
    TRes Function(Input$NoticeRelateToManyForCreateInput) then,
  ) = _CopyWithImpl$Input$NoticeRelateToManyForCreateInput;

  factory CopyWith$Input$NoticeRelateToManyForCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NoticeRelateToManyForCreateInput;

  TRes call({
    List<Input$NoticeCreateInput>? create,
    List<Input$NoticeWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$NoticeCreateInput>? Function(
              Iterable<
                  CopyWith$Input$NoticeCreateInput<Input$NoticeCreateInput>>?)
          _fn);
  TRes connect(
      Iterable<Input$NoticeWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$NoticeWhereUniqueInput<
                      Input$NoticeWhereUniqueInput>>?)
          _fn);
}

class _CopyWithImpl$Input$NoticeRelateToManyForCreateInput<TRes>
    implements CopyWith$Input$NoticeRelateToManyForCreateInput<TRes> {
  _CopyWithImpl$Input$NoticeRelateToManyForCreateInput(
    this._instance,
    this._then,
  );

  final Input$NoticeRelateToManyForCreateInput _instance;

  final TRes Function(Input$NoticeRelateToManyForCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$NoticeRelateToManyForCreateInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as List<Input$NoticeCreateInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$NoticeWhereUniqueInput>?),
      }));

  TRes create(
          Iterable<Input$NoticeCreateInput>? Function(
                  Iterable<
                      CopyWith$Input$NoticeCreateInput<
                          Input$NoticeCreateInput>>?)
              _fn) =>
      call(
          create:
              _fn(_instance.create?.map((e) => CopyWith$Input$NoticeCreateInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes connect(
          Iterable<Input$NoticeWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$NoticeWhereUniqueInput<
                          Input$NoticeWhereUniqueInput>>?)
              _fn) =>
      call(
          connect: _fn(_instance.connect
              ?.map((e) => CopyWith$Input$NoticeWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$NoticeRelateToManyForCreateInput<TRes>
    implements CopyWith$Input$NoticeRelateToManyForCreateInput<TRes> {
  _CopyWithStubImpl$Input$NoticeRelateToManyForCreateInput(this._res);

  TRes _res;

  call({
    List<Input$NoticeCreateInput>? create,
    List<Input$NoticeWhereUniqueInput>? connect,
  }) =>
      _res;

  create(_fn) => _res;

  connect(_fn) => _res;
}

class Input$ClassTestRelateToManyForCreateInput {
  factory Input$ClassTestRelateToManyForCreateInput({
    List<Input$ClassTestCreateInput>? create,
    List<Input$ClassTestWhereUniqueInput>? connect,
  }) =>
      Input$ClassTestRelateToManyForCreateInput._({
        if (create != null) r'create': create,
        if (connect != null) r'connect': connect,
      });

  Input$ClassTestRelateToManyForCreateInput._(this._$data);

  factory Input$ClassTestRelateToManyForCreateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) =>
              Input$ClassTestCreateInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ClassTestWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ClassTestRelateToManyForCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ClassTestCreateInput>? get create =>
      (_$data['create'] as List<Input$ClassTestCreateInput>?);

  List<Input$ClassTestWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ClassTestWhereUniqueInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ClassTestRelateToManyForCreateInput<
          Input$ClassTestRelateToManyForCreateInput>
      get copyWith => CopyWith$Input$ClassTestRelateToManyForCreateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClassTestRelateToManyForCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ClassTestRelateToManyForCreateInput<TRes> {
  factory CopyWith$Input$ClassTestRelateToManyForCreateInput(
    Input$ClassTestRelateToManyForCreateInput instance,
    TRes Function(Input$ClassTestRelateToManyForCreateInput) then,
  ) = _CopyWithImpl$Input$ClassTestRelateToManyForCreateInput;

  factory CopyWith$Input$ClassTestRelateToManyForCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ClassTestRelateToManyForCreateInput;

  TRes call({
    List<Input$ClassTestCreateInput>? create,
    List<Input$ClassTestWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$ClassTestCreateInput>? Function(
              Iterable<
                  CopyWith$Input$ClassTestCreateInput<
                      Input$ClassTestCreateInput>>?)
          _fn);
  TRes connect(
      Iterable<Input$ClassTestWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$ClassTestWhereUniqueInput<
                      Input$ClassTestWhereUniqueInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ClassTestRelateToManyForCreateInput<TRes>
    implements CopyWith$Input$ClassTestRelateToManyForCreateInput<TRes> {
  _CopyWithImpl$Input$ClassTestRelateToManyForCreateInput(
    this._instance,
    this._then,
  );

  final Input$ClassTestRelateToManyForCreateInput _instance;

  final TRes Function(Input$ClassTestRelateToManyForCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ClassTestRelateToManyForCreateInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as List<Input$ClassTestCreateInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ClassTestWhereUniqueInput>?),
      }));

  TRes create(
          Iterable<Input$ClassTestCreateInput>? Function(
                  Iterable<
                      CopyWith$Input$ClassTestCreateInput<
                          Input$ClassTestCreateInput>>?)
              _fn) =>
      call(
          create: _fn(
              _instance.create?.map((e) => CopyWith$Input$ClassTestCreateInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes connect(
          Iterable<Input$ClassTestWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$ClassTestWhereUniqueInput<
                          Input$ClassTestWhereUniqueInput>>?)
              _fn) =>
      call(
          connect: _fn(_instance.connect
              ?.map((e) => CopyWith$Input$ClassTestWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ClassTestRelateToManyForCreateInput<TRes>
    implements CopyWith$Input$ClassTestRelateToManyForCreateInput<TRes> {
  _CopyWithStubImpl$Input$ClassTestRelateToManyForCreateInput(this._res);

  TRes _res;

  call({
    List<Input$ClassTestCreateInput>? create,
    List<Input$ClassTestWhereUniqueInput>? connect,
  }) =>
      _res;

  create(_fn) => _res;

  connect(_fn) => _res;
}

class Input$ExpoTokenRelateToManyForCreateInput {
  factory Input$ExpoTokenRelateToManyForCreateInput(
          {List<Input$ExpoTokenWhereUniqueInput>? connect}) =>
      Input$ExpoTokenRelateToManyForCreateInput._({
        if (connect != null) r'connect': connect,
      });

  Input$ExpoTokenRelateToManyForCreateInput._(this._$data);

  factory Input$ExpoTokenRelateToManyForCreateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ExpoTokenWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ExpoTokenRelateToManyForCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ExpoTokenWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ExpoTokenWhereUniqueInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ExpoTokenRelateToManyForCreateInput<
          Input$ExpoTokenRelateToManyForCreateInput>
      get copyWith => CopyWith$Input$ExpoTokenRelateToManyForCreateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ExpoTokenRelateToManyForCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$ExpoTokenRelateToManyForCreateInput<TRes> {
  factory CopyWith$Input$ExpoTokenRelateToManyForCreateInput(
    Input$ExpoTokenRelateToManyForCreateInput instance,
    TRes Function(Input$ExpoTokenRelateToManyForCreateInput) then,
  ) = _CopyWithImpl$Input$ExpoTokenRelateToManyForCreateInput;

  factory CopyWith$Input$ExpoTokenRelateToManyForCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ExpoTokenRelateToManyForCreateInput;

  TRes call({List<Input$ExpoTokenWhereUniqueInput>? connect});
  TRes connect(
      Iterable<Input$ExpoTokenWhereUniqueInput>? Function(
              Iterable<
                  CopyWith$Input$ExpoTokenWhereUniqueInput<
                      Input$ExpoTokenWhereUniqueInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ExpoTokenRelateToManyForCreateInput<TRes>
    implements CopyWith$Input$ExpoTokenRelateToManyForCreateInput<TRes> {
  _CopyWithImpl$Input$ExpoTokenRelateToManyForCreateInput(
    this._instance,
    this._then,
  );

  final Input$ExpoTokenRelateToManyForCreateInput _instance;

  final TRes Function(Input$ExpoTokenRelateToManyForCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? connect = _undefined}) =>
      _then(Input$ExpoTokenRelateToManyForCreateInput._({
        ..._instance._$data,
        if (connect != _undefined)
          'connect': (connect as List<Input$ExpoTokenWhereUniqueInput>?),
      }));

  TRes connect(
          Iterable<Input$ExpoTokenWhereUniqueInput>? Function(
                  Iterable<
                      CopyWith$Input$ExpoTokenWhereUniqueInput<
                          Input$ExpoTokenWhereUniqueInput>>?)
              _fn) =>
      call(
          connect: _fn(_instance.connect
              ?.map((e) => CopyWith$Input$ExpoTokenWhereUniqueInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ExpoTokenRelateToManyForCreateInput<TRes>
    implements CopyWith$Input$ExpoTokenRelateToManyForCreateInput<TRes> {
  _CopyWithStubImpl$Input$ExpoTokenRelateToManyForCreateInput(this._res);

  TRes _res;

  call({List<Input$ExpoTokenWhereUniqueInput>? connect}) => _res;

  connect(_fn) => _res;
}

class Input$ExpoTokenWhereUniqueInput {
  factory Input$ExpoTokenWhereUniqueInput({String? id}) =>
      Input$ExpoTokenWhereUniqueInput._({
        if (id != null) r'id': id,
      });

  Input$ExpoTokenWhereUniqueInput._(this._$data);

  factory Input$ExpoTokenWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$ExpoTokenWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$ExpoTokenWhereUniqueInput<Input$ExpoTokenWhereUniqueInput>
      get copyWith => CopyWith$Input$ExpoTokenWhereUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ExpoTokenWhereUniqueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$ExpoTokenWhereUniqueInput<TRes> {
  factory CopyWith$Input$ExpoTokenWhereUniqueInput(
    Input$ExpoTokenWhereUniqueInput instance,
    TRes Function(Input$ExpoTokenWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$ExpoTokenWhereUniqueInput;

  factory CopyWith$Input$ExpoTokenWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ExpoTokenWhereUniqueInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$ExpoTokenWhereUniqueInput<TRes>
    implements CopyWith$Input$ExpoTokenWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$ExpoTokenWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$ExpoTokenWhereUniqueInput _instance;

  final TRes Function(Input$ExpoTokenWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$ExpoTokenWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$ExpoTokenWhereUniqueInput<TRes>
    implements CopyWith$Input$ExpoTokenWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$ExpoTokenWhereUniqueInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$ExpoTokenWhereInput {
  factory Input$ExpoTokenWhereInput({
    List<Input$ExpoTokenWhereInput>? AND,
    List<Input$ExpoTokenWhereInput>? OR,
    List<Input$ExpoTokenWhereInput>? NOT,
    Input$IDFilter? id,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
    Input$UserWhereInput? user,
  }) =>
      Input$ExpoTokenWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (user != null) r'user': user,
      });

  Input$ExpoTokenWhereInput._(this._$data);

  factory Input$ExpoTokenWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$ExpoTokenWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$ExpoTokenWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$ExpoTokenWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$DateTimeNullableFilter.fromJson(
              (l$createdAt as Map<String, dynamic>));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$DateTimeNullableFilter.fromJson(
              (l$updatedAt as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input$UserWhereInput.fromJson((l$user as Map<String, dynamic>));
    }
    return Input$ExpoTokenWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ExpoTokenWhereInput>? get AND =>
      (_$data['AND'] as List<Input$ExpoTokenWhereInput>?);

  List<Input$ExpoTokenWhereInput>? get OR =>
      (_$data['OR'] as List<Input$ExpoTokenWhereInput>?);

  List<Input$ExpoTokenWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$ExpoTokenWhereInput>?);

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);

  Input$DateTimeNullableFilter? get createdAt =>
      (_$data['createdAt'] as Input$DateTimeNullableFilter?);

  Input$DateTimeNullableFilter? get updatedAt =>
      (_$data['updatedAt'] as Input$DateTimeNullableFilter?);

  Input$UserWhereInput? get user => (_$data['user'] as Input$UserWhereInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ExpoTokenWhereInput<Input$ExpoTokenWhereInput> get copyWith =>
      CopyWith$Input$ExpoTokenWhereInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ExpoTokenWhereInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith$Input$ExpoTokenWhereInput<TRes> {
  factory CopyWith$Input$ExpoTokenWhereInput(
    Input$ExpoTokenWhereInput instance,
    TRes Function(Input$ExpoTokenWhereInput) then,
  ) = _CopyWithImpl$Input$ExpoTokenWhereInput;

  factory CopyWith$Input$ExpoTokenWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ExpoTokenWhereInput;

  TRes call({
    List<Input$ExpoTokenWhereInput>? AND,
    List<Input$ExpoTokenWhereInput>? OR,
    List<Input$ExpoTokenWhereInput>? NOT,
    Input$IDFilter? id,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
    Input$UserWhereInput? user,
  });
  TRes AND(
      Iterable<Input$ExpoTokenWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ExpoTokenWhereInput<
                      Input$ExpoTokenWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ExpoTokenWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ExpoTokenWhereInput<
                      Input$ExpoTokenWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ExpoTokenWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ExpoTokenWhereInput<
                      Input$ExpoTokenWhereInput>>?)
          _fn);
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt;
  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt;
  CopyWith$Input$UserWhereInput<TRes> get user;
}

class _CopyWithImpl$Input$ExpoTokenWhereInput<TRes>
    implements CopyWith$Input$ExpoTokenWhereInput<TRes> {
  _CopyWithImpl$Input$ExpoTokenWhereInput(
    this._instance,
    this._then,
  );

  final Input$ExpoTokenWhereInput _instance;

  final TRes Function(Input$ExpoTokenWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Input$ExpoTokenWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$ExpoTokenWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$ExpoTokenWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$ExpoTokenWhereInput>?),
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Input$DateTimeNullableFilter?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Input$DateTimeNullableFilter?),
        if (user != _undefined) 'user': (user as Input$UserWhereInput?),
      }));

  TRes AND(
          Iterable<Input$ExpoTokenWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ExpoTokenWhereInput<
                          Input$ExpoTokenWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$ExpoTokenWhereInput(
                e,
                (i) => i,
              )))?.toList());

  TRes OR(
          Iterable<Input$ExpoTokenWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ExpoTokenWhereInput<
                          Input$ExpoTokenWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$ExpoTokenWhereInput(
                e,
                (i) => i,
              )))?.toList());

  TRes NOT(
          Iterable<Input$ExpoTokenWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ExpoTokenWhereInput<
                          Input$ExpoTokenWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$ExpoTokenWhereInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateTimeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeNullableFilter(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateTimeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeNullableFilter(
            local$updatedAt, (e) => call(updatedAt: e));
  }

  CopyWith$Input$UserWhereInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Input$UserWhereInput.stub(_then(_instance))
        : CopyWith$Input$UserWhereInput(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Input$ExpoTokenWhereInput<TRes>
    implements CopyWith$Input$ExpoTokenWhereInput<TRes> {
  _CopyWithStubImpl$Input$ExpoTokenWhereInput(this._res);

  TRes _res;

  call({
    List<Input$ExpoTokenWhereInput>? AND,
    List<Input$ExpoTokenWhereInput>? OR,
    List<Input$ExpoTokenWhereInput>? NOT,
    Input$IDFilter? id,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
    Input$UserWhereInput? user,
  }) =>
      _res;

  AND(_fn) => _res;

  OR(_fn) => _res;

  NOT(_fn) => _res;

  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);

  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt =>
      CopyWith$Input$DateTimeNullableFilter.stub(_res);

  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt =>
      CopyWith$Input$DateTimeNullableFilter.stub(_res);

  CopyWith$Input$UserWhereInput<TRes> get user =>
      CopyWith$Input$UserWhereInput.stub(_res);
}

class Input$ExpoTokenOrderByInput {
  factory Input$ExpoTokenOrderByInput({
    Enum$OrderDirection? id,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  }) =>
      Input$ExpoTokenOrderByInput._({
        if (id != null) r'id': id,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$ExpoTokenOrderByInput._(this._$data);

  factory Input$ExpoTokenOrderByInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$OrderDirection((l$id as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$OrderDirection((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson$Enum$OrderDirection((l$updatedAt as String));
    }
    return Input$ExpoTokenOrderByInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderDirection? get id => (_$data['id'] as Enum$OrderDirection?);

  Enum$OrderDirection? get createdAt =>
      (_$data['createdAt'] as Enum$OrderDirection?);

  Enum$OrderDirection? get updatedAt =>
      (_$data['updatedAt'] as Enum$OrderDirection?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] =
          l$id == null ? null : toJson$Enum$OrderDirection(l$id);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$OrderDirection(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] =
          l$updatedAt == null ? null : toJson$Enum$OrderDirection(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$ExpoTokenOrderByInput<Input$ExpoTokenOrderByInput>
      get copyWith => CopyWith$Input$ExpoTokenOrderByInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ExpoTokenOrderByInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$ExpoTokenOrderByInput<TRes> {
  factory CopyWith$Input$ExpoTokenOrderByInput(
    Input$ExpoTokenOrderByInput instance,
    TRes Function(Input$ExpoTokenOrderByInput) then,
  ) = _CopyWithImpl$Input$ExpoTokenOrderByInput;

  factory CopyWith$Input$ExpoTokenOrderByInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ExpoTokenOrderByInput;

  TRes call({
    Enum$OrderDirection? id,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  });
}

class _CopyWithImpl$Input$ExpoTokenOrderByInput<TRes>
    implements CopyWith$Input$ExpoTokenOrderByInput<TRes> {
  _CopyWithImpl$Input$ExpoTokenOrderByInput(
    this._instance,
    this._then,
  );

  final Input$ExpoTokenOrderByInput _instance;

  final TRes Function(Input$ExpoTokenOrderByInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$ExpoTokenOrderByInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$OrderDirection?),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Enum$OrderDirection?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Enum$OrderDirection?),
      }));
}

class _CopyWithStubImpl$Input$ExpoTokenOrderByInput<TRes>
    implements CopyWith$Input$ExpoTokenOrderByInput<TRes> {
  _CopyWithStubImpl$Input$ExpoTokenOrderByInput(this._res);

  TRes _res;

  call({
    Enum$OrderDirection? id,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  }) =>
      _res;
}

class Input$NoticeWhereUniqueInput {
  factory Input$NoticeWhereUniqueInput({String? id}) =>
      Input$NoticeWhereUniqueInput._({
        if (id != null) r'id': id,
      });

  Input$NoticeWhereUniqueInput._(this._$data);

  factory Input$NoticeWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$NoticeWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$NoticeWhereUniqueInput<Input$NoticeWhereUniqueInput>
      get copyWith => CopyWith$Input$NoticeWhereUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NoticeWhereUniqueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$NoticeWhereUniqueInput<TRes> {
  factory CopyWith$Input$NoticeWhereUniqueInput(
    Input$NoticeWhereUniqueInput instance,
    TRes Function(Input$NoticeWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$NoticeWhereUniqueInput;

  factory CopyWith$Input$NoticeWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NoticeWhereUniqueInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$NoticeWhereUniqueInput<TRes>
    implements CopyWith$Input$NoticeWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$NoticeWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$NoticeWhereUniqueInput _instance;

  final TRes Function(Input$NoticeWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$NoticeWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$NoticeWhereUniqueInput<TRes>
    implements CopyWith$Input$NoticeWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$NoticeWhereUniqueInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$NoticeWhereInput {
  factory Input$NoticeWhereInput({
    List<Input$NoticeWhereInput>? AND,
    List<Input$NoticeWhereInput>? OR,
    List<Input$NoticeWhereInput>? NOT,
    Input$IDFilter? id,
    Input$StringFilter? title,
    Input$UserWhereInput? createdBy,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
  }) =>
      Input$NoticeWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (title != null) r'title': title,
        if (createdBy != null) r'createdBy': createdBy,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$NoticeWhereInput._(this._$data);

  factory Input$NoticeWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$NoticeWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$NoticeWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$NoticeWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = l$title == null
          ? null
          : Input$StringFilter.fromJson((l$title as Map<String, dynamic>));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$UserWhereInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$DateTimeNullableFilter.fromJson(
              (l$createdAt as Map<String, dynamic>));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$DateTimeNullableFilter.fromJson(
              (l$updatedAt as Map<String, dynamic>));
    }
    return Input$NoticeWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$NoticeWhereInput>? get AND =>
      (_$data['AND'] as List<Input$NoticeWhereInput>?);

  List<Input$NoticeWhereInput>? get OR =>
      (_$data['OR'] as List<Input$NoticeWhereInput>?);

  List<Input$NoticeWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$NoticeWhereInput>?);

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);

  Input$StringFilter? get title => (_$data['title'] as Input$StringFilter?);

  Input$UserWhereInput? get createdBy =>
      (_$data['createdBy'] as Input$UserWhereInput?);

  Input$DateTimeNullableFilter? get createdAt =>
      (_$data['createdAt'] as Input$DateTimeNullableFilter?);

  Input$DateTimeNullableFilter? get updatedAt =>
      (_$data['updatedAt'] as Input$DateTimeNullableFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$NoticeWhereInput<Input$NoticeWhereInput> get copyWith =>
      CopyWith$Input$NoticeWhereInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NoticeWhereInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$id = id;
    final l$title = title;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$NoticeWhereInput<TRes> {
  factory CopyWith$Input$NoticeWhereInput(
    Input$NoticeWhereInput instance,
    TRes Function(Input$NoticeWhereInput) then,
  ) = _CopyWithImpl$Input$NoticeWhereInput;

  factory CopyWith$Input$NoticeWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NoticeWhereInput;

  TRes call({
    List<Input$NoticeWhereInput>? AND,
    List<Input$NoticeWhereInput>? OR,
    List<Input$NoticeWhereInput>? NOT,
    Input$IDFilter? id,
    Input$StringFilter? title,
    Input$UserWhereInput? createdBy,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
  });
  TRes AND(
      Iterable<Input$NoticeWhereInput>? Function(
              Iterable<
                  CopyWith$Input$NoticeWhereInput<Input$NoticeWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$NoticeWhereInput>? Function(
              Iterable<
                  CopyWith$Input$NoticeWhereInput<Input$NoticeWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$NoticeWhereInput>? Function(
              Iterable<
                  CopyWith$Input$NoticeWhereInput<Input$NoticeWhereInput>>?)
          _fn);
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get title;
  CopyWith$Input$UserWhereInput<TRes> get createdBy;
  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt;
  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt;
}

class _CopyWithImpl$Input$NoticeWhereInput<TRes>
    implements CopyWith$Input$NoticeWhereInput<TRes> {
  _CopyWithImpl$Input$NoticeWhereInput(
    this._instance,
    this._then,
  );

  final Input$NoticeWhereInput _instance;

  final TRes Function(Input$NoticeWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$NoticeWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$NoticeWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$NoticeWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$NoticeWhereInput>?),
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (title != _undefined) 'title': (title as Input$StringFilter?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$UserWhereInput?),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Input$DateTimeNullableFilter?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Input$DateTimeNullableFilter?),
      }));

  TRes AND(
          Iterable<Input$NoticeWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$NoticeWhereInput<Input$NoticeWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$NoticeWhereInput(
                e,
                (i) => i,
              )))?.toList());

  TRes OR(
          Iterable<Input$NoticeWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$NoticeWhereInput<Input$NoticeWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$NoticeWhereInput(
                e,
                (i) => i,
              )))?.toList());

  TRes NOT(
          Iterable<Input$NoticeWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$NoticeWhereInput<Input$NoticeWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$NoticeWhereInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$title, (e) => call(title: e));
  }

  CopyWith$Input$UserWhereInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$UserWhereInput.stub(_then(_instance))
        : CopyWith$Input$UserWhereInput(
            local$createdBy, (e) => call(createdBy: e));
  }

  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateTimeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeNullableFilter(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateTimeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeNullableFilter(
            local$updatedAt, (e) => call(updatedAt: e));
  }
}

class _CopyWithStubImpl$Input$NoticeWhereInput<TRes>
    implements CopyWith$Input$NoticeWhereInput<TRes> {
  _CopyWithStubImpl$Input$NoticeWhereInput(this._res);

  TRes _res;

  call({
    List<Input$NoticeWhereInput>? AND,
    List<Input$NoticeWhereInput>? OR,
    List<Input$NoticeWhereInput>? NOT,
    Input$IDFilter? id,
    Input$StringFilter? title,
    Input$UserWhereInput? createdBy,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
  }) =>
      _res;

  AND(_fn) => _res;

  OR(_fn) => _res;

  NOT(_fn) => _res;

  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get title =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$UserWhereInput<TRes> get createdBy =>
      CopyWith$Input$UserWhereInput.stub(_res);

  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt =>
      CopyWith$Input$DateTimeNullableFilter.stub(_res);

  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt =>
      CopyWith$Input$DateTimeNullableFilter.stub(_res);
}

class Input$NoticeOrderByInput {
  factory Input$NoticeOrderByInput({
    Enum$OrderDirection? id,
    Enum$OrderDirection? title,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  }) =>
      Input$NoticeOrderByInput._({
        if (id != null) r'id': id,
        if (title != null) r'title': title,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$NoticeOrderByInput._(this._$data);

  factory Input$NoticeOrderByInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$OrderDirection((l$id as String));
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = l$title == null
          ? null
          : fromJson$Enum$OrderDirection((l$title as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$OrderDirection((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson$Enum$OrderDirection((l$updatedAt as String));
    }
    return Input$NoticeOrderByInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderDirection? get id => (_$data['id'] as Enum$OrderDirection?);

  Enum$OrderDirection? get title => (_$data['title'] as Enum$OrderDirection?);

  Enum$OrderDirection? get createdAt =>
      (_$data['createdAt'] as Enum$OrderDirection?);

  Enum$OrderDirection? get updatedAt =>
      (_$data['updatedAt'] as Enum$OrderDirection?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] =
          l$id == null ? null : toJson$Enum$OrderDirection(l$id);
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] =
          l$title == null ? null : toJson$Enum$OrderDirection(l$title);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$OrderDirection(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] =
          l$updatedAt == null ? null : toJson$Enum$OrderDirection(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$NoticeOrderByInput<Input$NoticeOrderByInput> get copyWith =>
      CopyWith$Input$NoticeOrderByInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NoticeOrderByInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$NoticeOrderByInput<TRes> {
  factory CopyWith$Input$NoticeOrderByInput(
    Input$NoticeOrderByInput instance,
    TRes Function(Input$NoticeOrderByInput) then,
  ) = _CopyWithImpl$Input$NoticeOrderByInput;

  factory CopyWith$Input$NoticeOrderByInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NoticeOrderByInput;

  TRes call({
    Enum$OrderDirection? id,
    Enum$OrderDirection? title,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  });
}

class _CopyWithImpl$Input$NoticeOrderByInput<TRes>
    implements CopyWith$Input$NoticeOrderByInput<TRes> {
  _CopyWithImpl$Input$NoticeOrderByInput(
    this._instance,
    this._then,
  );

  final Input$NoticeOrderByInput _instance;

  final TRes Function(Input$NoticeOrderByInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$NoticeOrderByInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$OrderDirection?),
        if (title != _undefined) 'title': (title as Enum$OrderDirection?),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Enum$OrderDirection?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Enum$OrderDirection?),
      }));
}

class _CopyWithStubImpl$Input$NoticeOrderByInput<TRes>
    implements CopyWith$Input$NoticeOrderByInput<TRes> {
  _CopyWithStubImpl$Input$NoticeOrderByInput(this._res);

  TRes _res;

  call({
    Enum$OrderDirection? id,
    Enum$OrderDirection? title,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  }) =>
      _res;
}

class Input$NoticeUpdateInput {
  factory Input$NoticeUpdateInput({
    String? title,
    Object? content,
    Input$UserRelateToOneForUpdateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Input$NoticeUpdateInput._({
        if (title != null) r'title': title,
        if (content != null) r'content': content,
        if (createdBy != null) r'createdBy': createdBy,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$NoticeUpdateInput._(this._$data);

  factory Input$NoticeUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('content')) {
      final l$content = data['content'];
      result$data['content'] = (l$content as Object?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$UserRelateToOneForUpdateInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    return Input$NoticeUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);

  Object? get content => (_$data['content'] as Object?);

  Input$UserRelateToOneForUpdateInput? get createdBy =>
      (_$data['createdBy'] as Input$UserRelateToOneForUpdateInput?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('content')) {
      final l$content = content;
      result$data['content'] = l$content;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$NoticeUpdateInput<Input$NoticeUpdateInput> get copyWith =>
      CopyWith$Input$NoticeUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NoticeUpdateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (_$data.containsKey('content') != other._$data.containsKey('content')) {
      return false;
    }
    if (l$content != lOther$content) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$content = content;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('content') ? l$content : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$NoticeUpdateInput<TRes> {
  factory CopyWith$Input$NoticeUpdateInput(
    Input$NoticeUpdateInput instance,
    TRes Function(Input$NoticeUpdateInput) then,
  ) = _CopyWithImpl$Input$NoticeUpdateInput;

  factory CopyWith$Input$NoticeUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NoticeUpdateInput;

  TRes call({
    String? title,
    Object? content,
    Input$UserRelateToOneForUpdateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  CopyWith$Input$UserRelateToOneForUpdateInput<TRes> get createdBy;
}

class _CopyWithImpl$Input$NoticeUpdateInput<TRes>
    implements CopyWith$Input$NoticeUpdateInput<TRes> {
  _CopyWithImpl$Input$NoticeUpdateInput(
    this._instance,
    this._then,
  );

  final Input$NoticeUpdateInput _instance;

  final TRes Function(Input$NoticeUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? content = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$NoticeUpdateInput._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (content != _undefined) 'content': (content as Object?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$UserRelateToOneForUpdateInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      }));

  CopyWith$Input$UserRelateToOneForUpdateInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$UserRelateToOneForUpdateInput.stub(_then(_instance))
        : CopyWith$Input$UserRelateToOneForUpdateInput(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Input$NoticeUpdateInput<TRes>
    implements CopyWith$Input$NoticeUpdateInput<TRes> {
  _CopyWithStubImpl$Input$NoticeUpdateInput(this._res);

  TRes _res;

  call({
    String? title,
    Object? content,
    Input$UserRelateToOneForUpdateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      _res;

  CopyWith$Input$UserRelateToOneForUpdateInput<TRes> get createdBy =>
      CopyWith$Input$UserRelateToOneForUpdateInput.stub(_res);
}

class Input$UserRelateToOneForUpdateInput {
  factory Input$UserRelateToOneForUpdateInput({
    Input$UserCreateInput? create,
    Input$UserWhereUniqueInput? connect,
    bool? disconnect,
  }) =>
      Input$UserRelateToOneForUpdateInput._({
        if (create != null) r'create': create,
        if (connect != null) r'connect': connect,
        if (disconnect != null) r'disconnect': disconnect,
      });

  Input$UserRelateToOneForUpdateInput._(this._$data);

  factory Input$UserRelateToOneForUpdateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$UserCreateInput.fromJson((l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$UserWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as bool?);
    }
    return Input$UserRelateToOneForUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserCreateInput? get create =>
      (_$data['create'] as Input$UserCreateInput?);

  Input$UserWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$UserWhereUniqueInput?);

  bool? get disconnect => (_$data['disconnect'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.toJson();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.toJson();
    }
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect;
    }
    return result$data;
  }

  CopyWith$Input$UserRelateToOneForUpdateInput<
          Input$UserRelateToOneForUpdateInput>
      get copyWith => CopyWith$Input$UserRelateToOneForUpdateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserRelateToOneForUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != lOther$create) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != lOther$connect) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != lOther$disconnect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connect = connect;
    final l$disconnect = disconnect;
    return Object.hashAll([
      _$data.containsKey('create') ? l$create : const {},
      _$data.containsKey('connect') ? l$connect : const {},
      _$data.containsKey('disconnect') ? l$disconnect : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserRelateToOneForUpdateInput<TRes> {
  factory CopyWith$Input$UserRelateToOneForUpdateInput(
    Input$UserRelateToOneForUpdateInput instance,
    TRes Function(Input$UserRelateToOneForUpdateInput) then,
  ) = _CopyWithImpl$Input$UserRelateToOneForUpdateInput;

  factory CopyWith$Input$UserRelateToOneForUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserRelateToOneForUpdateInput;

  TRes call({
    Input$UserCreateInput? create,
    Input$UserWhereUniqueInput? connect,
    bool? disconnect,
  });
  CopyWith$Input$UserCreateInput<TRes> get create;
  CopyWith$Input$UserWhereUniqueInput<TRes> get connect;
}

class _CopyWithImpl$Input$UserRelateToOneForUpdateInput<TRes>
    implements CopyWith$Input$UserRelateToOneForUpdateInput<TRes> {
  _CopyWithImpl$Input$UserRelateToOneForUpdateInput(
    this._instance,
    this._then,
  );

  final Input$UserRelateToOneForUpdateInput _instance;

  final TRes Function(Input$UserRelateToOneForUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connect = _undefined,
    Object? disconnect = _undefined,
  }) =>
      _then(Input$UserRelateToOneForUpdateInput._({
        ..._instance._$data,
        if (create != _undefined) 'create': (create as Input$UserCreateInput?),
        if (connect != _undefined)
          'connect': (connect as Input$UserWhereUniqueInput?),
        if (disconnect != _undefined) 'disconnect': (disconnect as bool?),
      }));

  CopyWith$Input$UserCreateInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$UserCreateInput.stub(_then(_instance))
        : CopyWith$Input$UserCreateInput(local$create, (e) => call(create: e));
  }

  CopyWith$Input$UserWhereUniqueInput<TRes> get connect {
    final local$connect = _instance.connect;
    return local$connect == null
        ? CopyWith$Input$UserWhereUniqueInput.stub(_then(_instance))
        : CopyWith$Input$UserWhereUniqueInput(
            local$connect, (e) => call(connect: e));
  }
}

class _CopyWithStubImpl$Input$UserRelateToOneForUpdateInput<TRes>
    implements CopyWith$Input$UserRelateToOneForUpdateInput<TRes> {
  _CopyWithStubImpl$Input$UserRelateToOneForUpdateInput(this._res);

  TRes _res;

  call({
    Input$UserCreateInput? create,
    Input$UserWhereUniqueInput? connect,
    bool? disconnect,
  }) =>
      _res;

  CopyWith$Input$UserCreateInput<TRes> get create =>
      CopyWith$Input$UserCreateInput.stub(_res);

  CopyWith$Input$UserWhereUniqueInput<TRes> get connect =>
      CopyWith$Input$UserWhereUniqueInput.stub(_res);
}

class Input$NoticeUpdateArgs {
  factory Input$NoticeUpdateArgs({
    required Input$NoticeWhereUniqueInput where,
    required Input$NoticeUpdateInput data,
  }) =>
      Input$NoticeUpdateArgs._({
        r'where': where,
        r'data': data,
      });

  Input$NoticeUpdateArgs._(this._$data);

  factory Input$NoticeUpdateArgs.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$NoticeWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] =
        Input$NoticeUpdateInput.fromJson((l$data as Map<String, dynamic>));
    return Input$NoticeUpdateArgs._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$NoticeWhereUniqueInput get where =>
      (_$data['where'] as Input$NoticeWhereUniqueInput);

  Input$NoticeUpdateInput get data =>
      (_$data['data'] as Input$NoticeUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$NoticeUpdateArgs<Input$NoticeUpdateArgs> get copyWith =>
      CopyWith$Input$NoticeUpdateArgs(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NoticeUpdateArgs || runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
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
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$NoticeUpdateArgs<TRes> {
  factory CopyWith$Input$NoticeUpdateArgs(
    Input$NoticeUpdateArgs instance,
    TRes Function(Input$NoticeUpdateArgs) then,
  ) = _CopyWithImpl$Input$NoticeUpdateArgs;

  factory CopyWith$Input$NoticeUpdateArgs.stub(TRes res) =
      _CopyWithStubImpl$Input$NoticeUpdateArgs;

  TRes call({
    Input$NoticeWhereUniqueInput? where,
    Input$NoticeUpdateInput? data,
  });
  CopyWith$Input$NoticeWhereUniqueInput<TRes> get where;
  CopyWith$Input$NoticeUpdateInput<TRes> get data;
}

class _CopyWithImpl$Input$NoticeUpdateArgs<TRes>
    implements CopyWith$Input$NoticeUpdateArgs<TRes> {
  _CopyWithImpl$Input$NoticeUpdateArgs(
    this._instance,
    this._then,
  );

  final Input$NoticeUpdateArgs _instance;

  final TRes Function(Input$NoticeUpdateArgs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$NoticeUpdateArgs._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$NoticeWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$NoticeUpdateInput),
      }));

  CopyWith$Input$NoticeWhereUniqueInput<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$NoticeWhereUniqueInput(
        local$where, (e) => call(where: e));
  }

  CopyWith$Input$NoticeUpdateInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$NoticeUpdateInput(local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$NoticeUpdateArgs<TRes>
    implements CopyWith$Input$NoticeUpdateArgs<TRes> {
  _CopyWithStubImpl$Input$NoticeUpdateArgs(this._res);

  TRes _res;

  call({
    Input$NoticeWhereUniqueInput? where,
    Input$NoticeUpdateInput? data,
  }) =>
      _res;

  CopyWith$Input$NoticeWhereUniqueInput<TRes> get where =>
      CopyWith$Input$NoticeWhereUniqueInput.stub(_res);

  CopyWith$Input$NoticeUpdateInput<TRes> get data =>
      CopyWith$Input$NoticeUpdateInput.stub(_res);
}

class Input$NoticeCreateInput {
  factory Input$NoticeCreateInput({
    String? title,
    Object? content,
    Input$UserRelateToOneForCreateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Input$NoticeCreateInput._({
        if (title != null) r'title': title,
        if (content != null) r'content': content,
        if (createdBy != null) r'createdBy': createdBy,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$NoticeCreateInput._(this._$data);

  factory Input$NoticeCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('content')) {
      final l$content = data['content'];
      result$data['content'] = (l$content as Object?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$UserRelateToOneForCreateInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    return Input$NoticeCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);

  Object? get content => (_$data['content'] as Object?);

  Input$UserRelateToOneForCreateInput? get createdBy =>
      (_$data['createdBy'] as Input$UserRelateToOneForCreateInput?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('content')) {
      final l$content = content;
      result$data['content'] = l$content;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$NoticeCreateInput<Input$NoticeCreateInput> get copyWith =>
      CopyWith$Input$NoticeCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NoticeCreateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (_$data.containsKey('content') != other._$data.containsKey('content')) {
      return false;
    }
    if (l$content != lOther$content) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$content = content;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('content') ? l$content : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$NoticeCreateInput<TRes> {
  factory CopyWith$Input$NoticeCreateInput(
    Input$NoticeCreateInput instance,
    TRes Function(Input$NoticeCreateInput) then,
  ) = _CopyWithImpl$Input$NoticeCreateInput;

  factory CopyWith$Input$NoticeCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NoticeCreateInput;

  TRes call({
    String? title,
    Object? content,
    Input$UserRelateToOneForCreateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  CopyWith$Input$UserRelateToOneForCreateInput<TRes> get createdBy;
}

class _CopyWithImpl$Input$NoticeCreateInput<TRes>
    implements CopyWith$Input$NoticeCreateInput<TRes> {
  _CopyWithImpl$Input$NoticeCreateInput(
    this._instance,
    this._then,
  );

  final Input$NoticeCreateInput _instance;

  final TRes Function(Input$NoticeCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? content = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$NoticeCreateInput._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (content != _undefined) 'content': (content as Object?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$UserRelateToOneForCreateInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      }));

  CopyWith$Input$UserRelateToOneForCreateInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$UserRelateToOneForCreateInput.stub(_then(_instance))
        : CopyWith$Input$UserRelateToOneForCreateInput(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Input$NoticeCreateInput<TRes>
    implements CopyWith$Input$NoticeCreateInput<TRes> {
  _CopyWithStubImpl$Input$NoticeCreateInput(this._res);

  TRes _res;

  call({
    String? title,
    Object? content,
    Input$UserRelateToOneForCreateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      _res;

  CopyWith$Input$UserRelateToOneForCreateInput<TRes> get createdBy =>
      CopyWith$Input$UserRelateToOneForCreateInput.stub(_res);
}

class Input$UserRelateToOneForCreateInput {
  factory Input$UserRelateToOneForCreateInput({
    Input$UserCreateInput? create,
    Input$UserWhereUniqueInput? connect,
  }) =>
      Input$UserRelateToOneForCreateInput._({
        if (create != null) r'create': create,
        if (connect != null) r'connect': connect,
      });

  Input$UserRelateToOneForCreateInput._(this._$data);

  factory Input$UserRelateToOneForCreateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$UserCreateInput.fromJson((l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$UserWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$UserRelateToOneForCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserCreateInput? get create =>
      (_$data['create'] as Input$UserCreateInput?);

  Input$UserWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$UserWhereUniqueInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.toJson();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserRelateToOneForCreateInput<
          Input$UserRelateToOneForCreateInput>
      get copyWith => CopyWith$Input$UserRelateToOneForCreateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserRelateToOneForCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != lOther$create) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create') ? l$create : const {},
      _$data.containsKey('connect') ? l$connect : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserRelateToOneForCreateInput<TRes> {
  factory CopyWith$Input$UserRelateToOneForCreateInput(
    Input$UserRelateToOneForCreateInput instance,
    TRes Function(Input$UserRelateToOneForCreateInput) then,
  ) = _CopyWithImpl$Input$UserRelateToOneForCreateInput;

  factory CopyWith$Input$UserRelateToOneForCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserRelateToOneForCreateInput;

  TRes call({
    Input$UserCreateInput? create,
    Input$UserWhereUniqueInput? connect,
  });
  CopyWith$Input$UserCreateInput<TRes> get create;
  CopyWith$Input$UserWhereUniqueInput<TRes> get connect;
}

class _CopyWithImpl$Input$UserRelateToOneForCreateInput<TRes>
    implements CopyWith$Input$UserRelateToOneForCreateInput<TRes> {
  _CopyWithImpl$Input$UserRelateToOneForCreateInput(
    this._instance,
    this._then,
  );

  final Input$UserRelateToOneForCreateInput _instance;

  final TRes Function(Input$UserRelateToOneForCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$UserRelateToOneForCreateInput._({
        ..._instance._$data,
        if (create != _undefined) 'create': (create as Input$UserCreateInput?),
        if (connect != _undefined)
          'connect': (connect as Input$UserWhereUniqueInput?),
      }));

  CopyWith$Input$UserCreateInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$UserCreateInput.stub(_then(_instance))
        : CopyWith$Input$UserCreateInput(local$create, (e) => call(create: e));
  }

  CopyWith$Input$UserWhereUniqueInput<TRes> get connect {
    final local$connect = _instance.connect;
    return local$connect == null
        ? CopyWith$Input$UserWhereUniqueInput.stub(_then(_instance))
        : CopyWith$Input$UserWhereUniqueInput(
            local$connect, (e) => call(connect: e));
  }
}

class _CopyWithStubImpl$Input$UserRelateToOneForCreateInput<TRes>
    implements CopyWith$Input$UserRelateToOneForCreateInput<TRes> {
  _CopyWithStubImpl$Input$UserRelateToOneForCreateInput(this._res);

  TRes _res;

  call({
    Input$UserCreateInput? create,
    Input$UserWhereUniqueInput? connect,
  }) =>
      _res;

  CopyWith$Input$UserCreateInput<TRes> get create =>
      CopyWith$Input$UserCreateInput.stub(_res);

  CopyWith$Input$UserWhereUniqueInput<TRes> get connect =>
      CopyWith$Input$UserWhereUniqueInput.stub(_res);
}

class Input$ClassTestWhereUniqueInput {
  factory Input$ClassTestWhereUniqueInput({String? id}) =>
      Input$ClassTestWhereUniqueInput._({
        if (id != null) r'id': id,
      });

  Input$ClassTestWhereUniqueInput._(this._$data);

  factory Input$ClassTestWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$ClassTestWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$ClassTestWhereUniqueInput<Input$ClassTestWhereUniqueInput>
      get copyWith => CopyWith$Input$ClassTestWhereUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClassTestWhereUniqueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$ClassTestWhereUniqueInput<TRes> {
  factory CopyWith$Input$ClassTestWhereUniqueInput(
    Input$ClassTestWhereUniqueInput instance,
    TRes Function(Input$ClassTestWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$ClassTestWhereUniqueInput;

  factory CopyWith$Input$ClassTestWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ClassTestWhereUniqueInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$ClassTestWhereUniqueInput<TRes>
    implements CopyWith$Input$ClassTestWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$ClassTestWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$ClassTestWhereUniqueInput _instance;

  final TRes Function(Input$ClassTestWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$ClassTestWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$ClassTestWhereUniqueInput<TRes>
    implements CopyWith$Input$ClassTestWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$ClassTestWhereUniqueInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$ClassTestWhereInput {
  factory Input$ClassTestWhereInput({
    List<Input$ClassTestWhereInput>? AND,
    List<Input$ClassTestWhereInput>? OR,
    List<Input$ClassTestWhereInput>? NOT,
    Input$IDFilter? id,
    Input$StringFilter? title,
    Input$DateTimeFilter? datetime,
    Input$UserWhereInput? createdBy,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
  }) =>
      Input$ClassTestWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (title != null) r'title': title,
        if (datetime != null) r'datetime': datetime,
        if (createdBy != null) r'createdBy': createdBy,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$ClassTestWhereInput._(this._$data);

  factory Input$ClassTestWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$ClassTestWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$ClassTestWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$ClassTestWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = l$title == null
          ? null
          : Input$StringFilter.fromJson((l$title as Map<String, dynamic>));
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : Input$DateTimeFilter.fromJson((l$datetime as Map<String, dynamic>));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$UserWhereInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$DateTimeNullableFilter.fromJson(
              (l$createdAt as Map<String, dynamic>));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$DateTimeNullableFilter.fromJson(
              (l$updatedAt as Map<String, dynamic>));
    }
    return Input$ClassTestWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ClassTestWhereInput>? get AND =>
      (_$data['AND'] as List<Input$ClassTestWhereInput>?);

  List<Input$ClassTestWhereInput>? get OR =>
      (_$data['OR'] as List<Input$ClassTestWhereInput>?);

  List<Input$ClassTestWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$ClassTestWhereInput>?);

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);

  Input$StringFilter? get title => (_$data['title'] as Input$StringFilter?);

  Input$DateTimeFilter? get datetime =>
      (_$data['datetime'] as Input$DateTimeFilter?);

  Input$UserWhereInput? get createdBy =>
      (_$data['createdBy'] as Input$UserWhereInput?);

  Input$DateTimeNullableFilter? get createdAt =>
      (_$data['createdAt'] as Input$DateTimeNullableFilter?);

  Input$DateTimeNullableFilter? get updatedAt =>
      (_$data['updatedAt'] as Input$DateTimeNullableFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title?.toJson();
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ClassTestWhereInput<Input$ClassTestWhereInput> get copyWith =>
      CopyWith$Input$ClassTestWhereInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClassTestWhereInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$id = id;
    final l$title = title;
    final l$datetime = datetime;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$ClassTestWhereInput<TRes> {
  factory CopyWith$Input$ClassTestWhereInput(
    Input$ClassTestWhereInput instance,
    TRes Function(Input$ClassTestWhereInput) then,
  ) = _CopyWithImpl$Input$ClassTestWhereInput;

  factory CopyWith$Input$ClassTestWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ClassTestWhereInput;

  TRes call({
    List<Input$ClassTestWhereInput>? AND,
    List<Input$ClassTestWhereInput>? OR,
    List<Input$ClassTestWhereInput>? NOT,
    Input$IDFilter? id,
    Input$StringFilter? title,
    Input$DateTimeFilter? datetime,
    Input$UserWhereInput? createdBy,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
  });
  TRes AND(
      Iterable<Input$ClassTestWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ClassTestWhereInput<
                      Input$ClassTestWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ClassTestWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ClassTestWhereInput<
                      Input$ClassTestWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ClassTestWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ClassTestWhereInput<
                      Input$ClassTestWhereInput>>?)
          _fn);
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get title;
  CopyWith$Input$DateTimeFilter<TRes> get datetime;
  CopyWith$Input$UserWhereInput<TRes> get createdBy;
  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt;
  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt;
}

class _CopyWithImpl$Input$ClassTestWhereInput<TRes>
    implements CopyWith$Input$ClassTestWhereInput<TRes> {
  _CopyWithImpl$Input$ClassTestWhereInput(
    this._instance,
    this._then,
  );

  final Input$ClassTestWhereInput _instance;

  final TRes Function(Input$ClassTestWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? datetime = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$ClassTestWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$ClassTestWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$ClassTestWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$ClassTestWhereInput>?),
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (title != _undefined) 'title': (title as Input$StringFilter?),
        if (datetime != _undefined)
          'datetime': (datetime as Input$DateTimeFilter?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$UserWhereInput?),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Input$DateTimeNullableFilter?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Input$DateTimeNullableFilter?),
      }));

  TRes AND(
          Iterable<Input$ClassTestWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ClassTestWhereInput<
                          Input$ClassTestWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$ClassTestWhereInput(
                e,
                (i) => i,
              )))?.toList());

  TRes OR(
          Iterable<Input$ClassTestWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ClassTestWhereInput<
                          Input$ClassTestWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$ClassTestWhereInput(
                e,
                (i) => i,
              )))?.toList());

  TRes NOT(
          Iterable<Input$ClassTestWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ClassTestWhereInput<
                          Input$ClassTestWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$ClassTestWhereInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$title, (e) => call(title: e));
  }

  CopyWith$Input$DateTimeFilter<TRes> get datetime {
    final local$datetime = _instance.datetime;
    return local$datetime == null
        ? CopyWith$Input$DateTimeFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeFilter(
            local$datetime, (e) => call(datetime: e));
  }

  CopyWith$Input$UserWhereInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$UserWhereInput.stub(_then(_instance))
        : CopyWith$Input$UserWhereInput(
            local$createdBy, (e) => call(createdBy: e));
  }

  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateTimeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeNullableFilter(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateTimeNullableFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeNullableFilter(
            local$updatedAt, (e) => call(updatedAt: e));
  }
}

class _CopyWithStubImpl$Input$ClassTestWhereInput<TRes>
    implements CopyWith$Input$ClassTestWhereInput<TRes> {
  _CopyWithStubImpl$Input$ClassTestWhereInput(this._res);

  TRes _res;

  call({
    List<Input$ClassTestWhereInput>? AND,
    List<Input$ClassTestWhereInput>? OR,
    List<Input$ClassTestWhereInput>? NOT,
    Input$IDFilter? id,
    Input$StringFilter? title,
    Input$DateTimeFilter? datetime,
    Input$UserWhereInput? createdBy,
    Input$DateTimeNullableFilter? createdAt,
    Input$DateTimeNullableFilter? updatedAt,
  }) =>
      _res;

  AND(_fn) => _res;

  OR(_fn) => _res;

  NOT(_fn) => _res;

  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get title =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$DateTimeFilter<TRes> get datetime =>
      CopyWith$Input$DateTimeFilter.stub(_res);

  CopyWith$Input$UserWhereInput<TRes> get createdBy =>
      CopyWith$Input$UserWhereInput.stub(_res);

  CopyWith$Input$DateTimeNullableFilter<TRes> get createdAt =>
      CopyWith$Input$DateTimeNullableFilter.stub(_res);

  CopyWith$Input$DateTimeNullableFilter<TRes> get updatedAt =>
      CopyWith$Input$DateTimeNullableFilter.stub(_res);
}

class Input$DateTimeFilter {
  factory Input$DateTimeFilter({
    DateTime? equals,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    DateTime? lt,
    DateTime? lte,
    DateTime? gt,
    DateTime? gte,
    Input$DateTimeFilter? not,
  }) =>
      Input$DateTimeFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
      });

  Input$DateTimeFilter._(this._$data);

  factory Input$DateTimeFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] =
          l$equals == null ? null : DateTime.parse((l$equals as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : DateTime.parse((l$lt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : DateTime.parse((l$lte as String));
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : DateTime.parse((l$gt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : DateTime.parse((l$gte as String));
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$DateTimeFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$DateTimeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get equals => (_$data['equals'] as DateTime?);

  List<DateTime>? get $in => (_$data['in'] as List<DateTime>?);

  List<DateTime>? get notIn => (_$data['notIn'] as List<DateTime>?);

  DateTime? get lt => (_$data['lt'] as DateTime?);

  DateTime? get lte => (_$data['lte'] as DateTime?);

  DateTime? get gt => (_$data['gt'] as DateTime?);

  DateTime? get gte => (_$data['gte'] as DateTime?);

  Input$DateTimeFilter? get not => (_$data['not'] as Input$DateTimeFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] = l$equals?.toIso8601String();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e.toIso8601String()).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e.toIso8601String()).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt?.toIso8601String();
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte?.toIso8601String();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt?.toIso8601String();
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte?.toIso8601String();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DateTimeFilter<Input$DateTimeFilter> get copyWith =>
      CopyWith$Input$DateTimeFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DateTimeFilter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$equals = equals;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lt = lt;
    final l$lte = lte;
    final l$gt = gt;
    final l$gte = gte;
    final l$not = not;
    return Object.hashAll([
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('not') ? l$not : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateTimeFilter<TRes> {
  factory CopyWith$Input$DateTimeFilter(
    Input$DateTimeFilter instance,
    TRes Function(Input$DateTimeFilter) then,
  ) = _CopyWithImpl$Input$DateTimeFilter;

  factory CopyWith$Input$DateTimeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeFilter;

  TRes call({
    DateTime? equals,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    DateTime? lt,
    DateTime? lte,
    DateTime? gt,
    DateTime? gte,
    Input$DateTimeFilter? not,
  });
  CopyWith$Input$DateTimeFilter<TRes> get not;
}

class _CopyWithImpl$Input$DateTimeFilter<TRes>
    implements CopyWith$Input$DateTimeFilter<TRes> {
  _CopyWithImpl$Input$DateTimeFilter(
    this._instance,
    this._then,
  );

  final Input$DateTimeFilter _instance;

  final TRes Function(Input$DateTimeFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? not = _undefined,
  }) =>
      _then(Input$DateTimeFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as DateTime?),
        if ($in != _undefined) 'in': ($in as List<DateTime>?),
        if (notIn != _undefined) 'notIn': (notIn as List<DateTime>?),
        if (lt != _undefined) 'lt': (lt as DateTime?),
        if (lte != _undefined) 'lte': (lte as DateTime?),
        if (gt != _undefined) 'gt': (gt as DateTime?),
        if (gte != _undefined) 'gte': (gte as DateTime?),
        if (not != _undefined) 'not': (not as Input$DateTimeFilter?),
      }));

  CopyWith$Input$DateTimeFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$DateTimeFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$DateTimeFilter<TRes>
    implements CopyWith$Input$DateTimeFilter<TRes> {
  _CopyWithStubImpl$Input$DateTimeFilter(this._res);

  TRes _res;

  call({
    DateTime? equals,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    DateTime? lt,
    DateTime? lte,
    DateTime? gt,
    DateTime? gte,
    Input$DateTimeFilter? not,
  }) =>
      _res;

  CopyWith$Input$DateTimeFilter<TRes> get not =>
      CopyWith$Input$DateTimeFilter.stub(_res);
}

class Input$ClassTestOrderByInput {
  factory Input$ClassTestOrderByInput({
    Enum$OrderDirection? id,
    Enum$OrderDirection? title,
    Enum$OrderDirection? datetime,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  }) =>
      Input$ClassTestOrderByInput._({
        if (id != null) r'id': id,
        if (title != null) r'title': title,
        if (datetime != null) r'datetime': datetime,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$ClassTestOrderByInput._(this._$data);

  factory Input$ClassTestOrderByInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$OrderDirection((l$id as String));
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = l$title == null
          ? null
          : fromJson$Enum$OrderDirection((l$title as String));
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : fromJson$Enum$OrderDirection((l$datetime as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$OrderDirection((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson$Enum$OrderDirection((l$updatedAt as String));
    }
    return Input$ClassTestOrderByInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderDirection? get id => (_$data['id'] as Enum$OrderDirection?);

  Enum$OrderDirection? get title => (_$data['title'] as Enum$OrderDirection?);

  Enum$OrderDirection? get datetime =>
      (_$data['datetime'] as Enum$OrderDirection?);

  Enum$OrderDirection? get createdAt =>
      (_$data['createdAt'] as Enum$OrderDirection?);

  Enum$OrderDirection? get updatedAt =>
      (_$data['updatedAt'] as Enum$OrderDirection?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] =
          l$id == null ? null : toJson$Enum$OrderDirection(l$id);
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] =
          l$title == null ? null : toJson$Enum$OrderDirection(l$title);
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] =
          l$datetime == null ? null : toJson$Enum$OrderDirection(l$datetime);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$OrderDirection(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] =
          l$updatedAt == null ? null : toJson$Enum$OrderDirection(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$ClassTestOrderByInput<Input$ClassTestOrderByInput>
      get copyWith => CopyWith$Input$ClassTestOrderByInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClassTestOrderByInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$datetime = datetime;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$ClassTestOrderByInput<TRes> {
  factory CopyWith$Input$ClassTestOrderByInput(
    Input$ClassTestOrderByInput instance,
    TRes Function(Input$ClassTestOrderByInput) then,
  ) = _CopyWithImpl$Input$ClassTestOrderByInput;

  factory CopyWith$Input$ClassTestOrderByInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ClassTestOrderByInput;

  TRes call({
    Enum$OrderDirection? id,
    Enum$OrderDirection? title,
    Enum$OrderDirection? datetime,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  });
}

class _CopyWithImpl$Input$ClassTestOrderByInput<TRes>
    implements CopyWith$Input$ClassTestOrderByInput<TRes> {
  _CopyWithImpl$Input$ClassTestOrderByInput(
    this._instance,
    this._then,
  );

  final Input$ClassTestOrderByInput _instance;

  final TRes Function(Input$ClassTestOrderByInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? datetime = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$ClassTestOrderByInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$OrderDirection?),
        if (title != _undefined) 'title': (title as Enum$OrderDirection?),
        if (datetime != _undefined)
          'datetime': (datetime as Enum$OrderDirection?),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Enum$OrderDirection?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Enum$OrderDirection?),
      }));
}

class _CopyWithStubImpl$Input$ClassTestOrderByInput<TRes>
    implements CopyWith$Input$ClassTestOrderByInput<TRes> {
  _CopyWithStubImpl$Input$ClassTestOrderByInput(this._res);

  TRes _res;

  call({
    Enum$OrderDirection? id,
    Enum$OrderDirection? title,
    Enum$OrderDirection? datetime,
    Enum$OrderDirection? createdAt,
    Enum$OrderDirection? updatedAt,
  }) =>
      _res;
}

class Input$ClassTestUpdateInput {
  factory Input$ClassTestUpdateInput({
    String? title,
    Object? content,
    DateTime? datetime,
    Input$UserRelateToOneForUpdateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Input$ClassTestUpdateInput._({
        if (title != null) r'title': title,
        if (content != null) r'content': content,
        if (datetime != null) r'datetime': datetime,
        if (createdBy != null) r'createdBy': createdBy,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$ClassTestUpdateInput._(this._$data);

  factory Input$ClassTestUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('content')) {
      final l$content = data['content'];
      result$data['content'] = (l$content as Object?);
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] =
          l$datetime == null ? null : DateTime.parse((l$datetime as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$UserRelateToOneForUpdateInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    return Input$ClassTestUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);

  Object? get content => (_$data['content'] as Object?);

  DateTime? get datetime => (_$data['datetime'] as DateTime?);

  Input$UserRelateToOneForUpdateInput? get createdBy =>
      (_$data['createdBy'] as Input$UserRelateToOneForUpdateInput?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('content')) {
      final l$content = content;
      result$data['content'] = l$content;
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$ClassTestUpdateInput<Input$ClassTestUpdateInput>
      get copyWith => CopyWith$Input$ClassTestUpdateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClassTestUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (_$data.containsKey('content') != other._$data.containsKey('content')) {
      return false;
    }
    if (l$content != lOther$content) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$content = content;
    final l$datetime = datetime;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('content') ? l$content : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$ClassTestUpdateInput<TRes> {
  factory CopyWith$Input$ClassTestUpdateInput(
    Input$ClassTestUpdateInput instance,
    TRes Function(Input$ClassTestUpdateInput) then,
  ) = _CopyWithImpl$Input$ClassTestUpdateInput;

  factory CopyWith$Input$ClassTestUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ClassTestUpdateInput;

  TRes call({
    String? title,
    Object? content,
    DateTime? datetime,
    Input$UserRelateToOneForUpdateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  CopyWith$Input$UserRelateToOneForUpdateInput<TRes> get createdBy;
}

class _CopyWithImpl$Input$ClassTestUpdateInput<TRes>
    implements CopyWith$Input$ClassTestUpdateInput<TRes> {
  _CopyWithImpl$Input$ClassTestUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ClassTestUpdateInput _instance;

  final TRes Function(Input$ClassTestUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? content = _undefined,
    Object? datetime = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$ClassTestUpdateInput._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (content != _undefined) 'content': (content as Object?),
        if (datetime != _undefined) 'datetime': (datetime as DateTime?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$UserRelateToOneForUpdateInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      }));

  CopyWith$Input$UserRelateToOneForUpdateInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$UserRelateToOneForUpdateInput.stub(_then(_instance))
        : CopyWith$Input$UserRelateToOneForUpdateInput(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Input$ClassTestUpdateInput<TRes>
    implements CopyWith$Input$ClassTestUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ClassTestUpdateInput(this._res);

  TRes _res;

  call({
    String? title,
    Object? content,
    DateTime? datetime,
    Input$UserRelateToOneForUpdateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      _res;

  CopyWith$Input$UserRelateToOneForUpdateInput<TRes> get createdBy =>
      CopyWith$Input$UserRelateToOneForUpdateInput.stub(_res);
}

class Input$ClassTestUpdateArgs {
  factory Input$ClassTestUpdateArgs({
    required Input$ClassTestWhereUniqueInput where,
    required Input$ClassTestUpdateInput data,
  }) =>
      Input$ClassTestUpdateArgs._({
        r'where': where,
        r'data': data,
      });

  Input$ClassTestUpdateArgs._(this._$data);

  factory Input$ClassTestUpdateArgs.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ClassTestWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] =
        Input$ClassTestUpdateInput.fromJson((l$data as Map<String, dynamic>));
    return Input$ClassTestUpdateArgs._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ClassTestWhereUniqueInput get where =>
      (_$data['where'] as Input$ClassTestWhereUniqueInput);

  Input$ClassTestUpdateInput get data =>
      (_$data['data'] as Input$ClassTestUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$ClassTestUpdateArgs<Input$ClassTestUpdateArgs> get copyWith =>
      CopyWith$Input$ClassTestUpdateArgs(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClassTestUpdateArgs ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
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
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$ClassTestUpdateArgs<TRes> {
  factory CopyWith$Input$ClassTestUpdateArgs(
    Input$ClassTestUpdateArgs instance,
    TRes Function(Input$ClassTestUpdateArgs) then,
  ) = _CopyWithImpl$Input$ClassTestUpdateArgs;

  factory CopyWith$Input$ClassTestUpdateArgs.stub(TRes res) =
      _CopyWithStubImpl$Input$ClassTestUpdateArgs;

  TRes call({
    Input$ClassTestWhereUniqueInput? where,
    Input$ClassTestUpdateInput? data,
  });
  CopyWith$Input$ClassTestWhereUniqueInput<TRes> get where;
  CopyWith$Input$ClassTestUpdateInput<TRes> get data;
}

class _CopyWithImpl$Input$ClassTestUpdateArgs<TRes>
    implements CopyWith$Input$ClassTestUpdateArgs<TRes> {
  _CopyWithImpl$Input$ClassTestUpdateArgs(
    this._instance,
    this._then,
  );

  final Input$ClassTestUpdateArgs _instance;

  final TRes Function(Input$ClassTestUpdateArgs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$ClassTestUpdateArgs._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ClassTestWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$ClassTestUpdateInput),
      }));

  CopyWith$Input$ClassTestWhereUniqueInput<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$ClassTestWhereUniqueInput(
        local$where, (e) => call(where: e));
  }

  CopyWith$Input$ClassTestUpdateInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$ClassTestUpdateInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$ClassTestUpdateArgs<TRes>
    implements CopyWith$Input$ClassTestUpdateArgs<TRes> {
  _CopyWithStubImpl$Input$ClassTestUpdateArgs(this._res);

  TRes _res;

  call({
    Input$ClassTestWhereUniqueInput? where,
    Input$ClassTestUpdateInput? data,
  }) =>
      _res;

  CopyWith$Input$ClassTestWhereUniqueInput<TRes> get where =>
      CopyWith$Input$ClassTestWhereUniqueInput.stub(_res);

  CopyWith$Input$ClassTestUpdateInput<TRes> get data =>
      CopyWith$Input$ClassTestUpdateInput.stub(_res);
}

class Input$ClassTestCreateInput {
  factory Input$ClassTestCreateInput({
    String? title,
    required Object content,
    required DateTime datetime,
    Input$UserRelateToOneForCreateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Input$ClassTestCreateInput._({
        if (title != null) r'title': title,
        r'content': content,
        r'datetime': datetime,
        if (createdBy != null) r'createdBy': createdBy,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$ClassTestCreateInput._(this._$data);

  factory Input$ClassTestCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String);
    }
    final l$content = data['content'];
    result$data['content'] = (l$content as Object);
    final l$datetime = data['datetime'];
    result$data['datetime'] = DateTime.parse((l$datetime as String));
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$UserRelateToOneForCreateInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    return Input$ClassTestCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);

  Object get content => (_$data['content'] as Object);

  DateTime get datetime => (_$data['datetime'] as DateTime);

  Input$UserRelateToOneForCreateInput? get createdBy =>
      (_$data['createdBy'] as Input$UserRelateToOneForCreateInput?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = (l$title as String);
    }
    final l$content = content;
    result$data['content'] = l$content;
    final l$datetime = datetime;
    result$data['datetime'] = l$datetime.toIso8601String();
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$ClassTestCreateInput<Input$ClassTestCreateInput>
      get copyWith => CopyWith$Input$ClassTestCreateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClassTestCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
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
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$content = content;
    final l$datetime = datetime;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      l$content,
      l$datetime,
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$ClassTestCreateInput<TRes> {
  factory CopyWith$Input$ClassTestCreateInput(
    Input$ClassTestCreateInput instance,
    TRes Function(Input$ClassTestCreateInput) then,
  ) = _CopyWithImpl$Input$ClassTestCreateInput;

  factory CopyWith$Input$ClassTestCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ClassTestCreateInput;

  TRes call({
    String? title,
    Object? content,
    DateTime? datetime,
    Input$UserRelateToOneForCreateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  CopyWith$Input$UserRelateToOneForCreateInput<TRes> get createdBy;
}

class _CopyWithImpl$Input$ClassTestCreateInput<TRes>
    implements CopyWith$Input$ClassTestCreateInput<TRes> {
  _CopyWithImpl$Input$ClassTestCreateInput(
    this._instance,
    this._then,
  );

  final Input$ClassTestCreateInput _instance;

  final TRes Function(Input$ClassTestCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? content = _undefined,
    Object? datetime = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$ClassTestCreateInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (content != _undefined && content != null)
          'content': (content as Object),
        if (datetime != _undefined && datetime != null)
          'datetime': (datetime as DateTime),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$UserRelateToOneForCreateInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      }));

  CopyWith$Input$UserRelateToOneForCreateInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$UserRelateToOneForCreateInput.stub(_then(_instance))
        : CopyWith$Input$UserRelateToOneForCreateInput(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Input$ClassTestCreateInput<TRes>
    implements CopyWith$Input$ClassTestCreateInput<TRes> {
  _CopyWithStubImpl$Input$ClassTestCreateInput(this._res);

  TRes _res;

  call({
    String? title,
    Object? content,
    DateTime? datetime,
    Input$UserRelateToOneForCreateInput? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      _res;

  CopyWith$Input$UserRelateToOneForCreateInput<TRes> get createdBy =>
      CopyWith$Input$UserRelateToOneForCreateInput.stub(_res);
}

class Input$ExpoTokenUploadInput {
  factory Input$ExpoTokenUploadInput({
    required String token,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Input$ExpoTokenUploadInput._({
        r'token': token,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$ExpoTokenUploadInput._(this._$data);

  factory Input$ExpoTokenUploadInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    return Input$ExpoTokenUploadInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$ExpoTokenUploadInput<Input$ExpoTokenUploadInput>
      get copyWith => CopyWith$Input$ExpoTokenUploadInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ExpoTokenUploadInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      l$token,
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$ExpoTokenUploadInput<TRes> {
  factory CopyWith$Input$ExpoTokenUploadInput(
    Input$ExpoTokenUploadInput instance,
    TRes Function(Input$ExpoTokenUploadInput) then,
  ) = _CopyWithImpl$Input$ExpoTokenUploadInput;

  factory CopyWith$Input$ExpoTokenUploadInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ExpoTokenUploadInput;

  TRes call({
    String? token,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _CopyWithImpl$Input$ExpoTokenUploadInput<TRes>
    implements CopyWith$Input$ExpoTokenUploadInput<TRes> {
  _CopyWithImpl$Input$ExpoTokenUploadInput(
    this._instance,
    this._then,
  );

  final Input$ExpoTokenUploadInput _instance;

  final TRes Function(Input$ExpoTokenUploadInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$ExpoTokenUploadInput._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$ExpoTokenUploadInput<TRes>
    implements CopyWith$Input$ExpoTokenUploadInput<TRes> {
  _CopyWithStubImpl$Input$ExpoTokenUploadInput(this._res);

  TRes _res;

  call({
    String? token,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      _res;
}

class Input$CreateInitialUserInput {
  factory Input$CreateInitialUserInput({
    String? name,
    String? email,
    required String password,
  }) =>
      Input$CreateInitialUserInput._({
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        r'password': password,
      });

  Input$CreateInitialUserInput._(this._$data);

  factory Input$CreateInitialUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String);
    }
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$CreateInitialUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get email => (_$data['email'] as String?);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = (l$name as String);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = (l$email as String);
    }
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$CreateInitialUserInput<Input$CreateInitialUserInput>
      get copyWith => CopyWith$Input$CreateInitialUserInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateInitialUserInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
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
    final l$name = name;
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$CreateInitialUserInput<TRes> {
  factory CopyWith$Input$CreateInitialUserInput(
    Input$CreateInitialUserInput instance,
    TRes Function(Input$CreateInitialUserInput) then,
  ) = _CopyWithImpl$Input$CreateInitialUserInput;

  factory CopyWith$Input$CreateInitialUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateInitialUserInput;

  TRes call({
    String? name,
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$CreateInitialUserInput<TRes>
    implements CopyWith$Input$CreateInitialUserInput<TRes> {
  _CopyWithImpl$Input$CreateInitialUserInput(
    this._instance,
    this._then,
  );

  final Input$CreateInitialUserInput _instance;

  final TRes Function(Input$CreateInitialUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$CreateInitialUserInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$CreateInitialUserInput<TRes>
    implements CopyWith$Input$CreateInitialUserInput<TRes> {
  _CopyWithStubImpl$Input$CreateInitialUserInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? password,
  }) =>
      _res;
}

enum Enum$UserRoleType {
  admin,
  CR,
  user,
  $unknown;

  factory Enum$UserRoleType.fromJson(String value) =>
      fromJson$Enum$UserRoleType(value);

  String toJson() => toJson$Enum$UserRoleType(this);
}

String toJson$Enum$UserRoleType(Enum$UserRoleType e) {
  switch (e) {
    case Enum$UserRoleType.admin:
      return r'admin';
    case Enum$UserRoleType.CR:
      return r'CR';
    case Enum$UserRoleType.user:
      return r'user';
    case Enum$UserRoleType.$unknown:
      return r'$unknown';
  }
}

Enum$UserRoleType fromJson$Enum$UserRoleType(String value) {
  switch (value) {
    case r'admin':
      return Enum$UserRoleType.admin;
    case r'CR':
      return Enum$UserRoleType.CR;
    case r'user':
      return Enum$UserRoleType.user;
    default:
      return Enum$UserRoleType.$unknown;
  }
}

enum Enum$OrderDirection {
  asc,
  desc,
  $unknown;

  factory Enum$OrderDirection.fromJson(String value) =>
      fromJson$Enum$OrderDirection(value);

  String toJson() => toJson$Enum$OrderDirection(this);
}

String toJson$Enum$OrderDirection(Enum$OrderDirection e) {
  switch (e) {
    case Enum$OrderDirection.asc:
      return r'asc';
    case Enum$OrderDirection.desc:
      return r'desc';
    case Enum$OrderDirection.$unknown:
      return r'$unknown';
  }
}

Enum$OrderDirection fromJson$Enum$OrderDirection(String value) {
  switch (value) {
    case r'asc':
      return Enum$OrderDirection.asc;
    case r'desc':
      return Enum$OrderDirection.desc;
    default:
      return Enum$OrderDirection.$unknown;
  }
}

enum Enum$KeystoneAdminUIFieldMetaIsNonNull {
  read,
  create,
  update,
  $unknown;

  factory Enum$KeystoneAdminUIFieldMetaIsNonNull.fromJson(String value) =>
      fromJson$Enum$KeystoneAdminUIFieldMetaIsNonNull(value);

  String toJson() => toJson$Enum$KeystoneAdminUIFieldMetaIsNonNull(this);
}

String toJson$Enum$KeystoneAdminUIFieldMetaIsNonNull(
    Enum$KeystoneAdminUIFieldMetaIsNonNull e) {
  switch (e) {
    case Enum$KeystoneAdminUIFieldMetaIsNonNull.read:
      return r'read';
    case Enum$KeystoneAdminUIFieldMetaIsNonNull.create:
      return r'create';
    case Enum$KeystoneAdminUIFieldMetaIsNonNull.update:
      return r'update';
    case Enum$KeystoneAdminUIFieldMetaIsNonNull.$unknown:
      return r'$unknown';
  }
}

Enum$KeystoneAdminUIFieldMetaIsNonNull
    fromJson$Enum$KeystoneAdminUIFieldMetaIsNonNull(String value) {
  switch (value) {
    case r'read':
      return Enum$KeystoneAdminUIFieldMetaIsNonNull.read;
    case r'create':
      return Enum$KeystoneAdminUIFieldMetaIsNonNull.create;
    case r'update':
      return Enum$KeystoneAdminUIFieldMetaIsNonNull.update;
    default:
      return Enum$KeystoneAdminUIFieldMetaIsNonNull.$unknown;
  }
}

enum Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode {
  edit,
  hidden,
  $unknown;

  factory Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode.fromJson(
          String value) =>
      fromJson$Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode(value);

  String toJson() =>
      toJson$Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode(this);
}

String toJson$Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode(
    Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode e) {
  switch (e) {
    case Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode.edit:
      return r'edit';
    case Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode.hidden:
      return r'hidden';
    case Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode.$unknown:
      return r'$unknown';
  }
}

Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode
    fromJson$Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode(String value) {
  switch (value) {
    case r'edit':
      return Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode.edit;
    case r'hidden':
      return Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode.hidden;
    default:
      return Enum$KeystoneAdminUIFieldMetaCreateViewFieldMode.$unknown;
  }
}

enum Enum$KeystoneAdminUIFieldMetaListViewFieldMode {
  read,
  hidden,
  $unknown;

  factory Enum$KeystoneAdminUIFieldMetaListViewFieldMode.fromJson(
          String value) =>
      fromJson$Enum$KeystoneAdminUIFieldMetaListViewFieldMode(value);

  String toJson() =>
      toJson$Enum$KeystoneAdminUIFieldMetaListViewFieldMode(this);
}

String toJson$Enum$KeystoneAdminUIFieldMetaListViewFieldMode(
    Enum$KeystoneAdminUIFieldMetaListViewFieldMode e) {
  switch (e) {
    case Enum$KeystoneAdminUIFieldMetaListViewFieldMode.read:
      return r'read';
    case Enum$KeystoneAdminUIFieldMetaListViewFieldMode.hidden:
      return r'hidden';
    case Enum$KeystoneAdminUIFieldMetaListViewFieldMode.$unknown:
      return r'$unknown';
  }
}

Enum$KeystoneAdminUIFieldMetaListViewFieldMode
    fromJson$Enum$KeystoneAdminUIFieldMetaListViewFieldMode(String value) {
  switch (value) {
    case r'read':
      return Enum$KeystoneAdminUIFieldMetaListViewFieldMode.read;
    case r'hidden':
      return Enum$KeystoneAdminUIFieldMetaListViewFieldMode.hidden;
    default:
      return Enum$KeystoneAdminUIFieldMetaListViewFieldMode.$unknown;
  }
}

enum Enum$KeystoneAdminUIFieldMetaItemViewFieldMode {
  edit,
  read,
  hidden,
  $unknown;

  factory Enum$KeystoneAdminUIFieldMetaItemViewFieldMode.fromJson(
          String value) =>
      fromJson$Enum$KeystoneAdminUIFieldMetaItemViewFieldMode(value);

  String toJson() =>
      toJson$Enum$KeystoneAdminUIFieldMetaItemViewFieldMode(this);
}

String toJson$Enum$KeystoneAdminUIFieldMetaItemViewFieldMode(
    Enum$KeystoneAdminUIFieldMetaItemViewFieldMode e) {
  switch (e) {
    case Enum$KeystoneAdminUIFieldMetaItemViewFieldMode.edit:
      return r'edit';
    case Enum$KeystoneAdminUIFieldMetaItemViewFieldMode.read:
      return r'read';
    case Enum$KeystoneAdminUIFieldMetaItemViewFieldMode.hidden:
      return r'hidden';
    case Enum$KeystoneAdminUIFieldMetaItemViewFieldMode.$unknown:
      return r'$unknown';
  }
}

Enum$KeystoneAdminUIFieldMetaItemViewFieldMode
    fromJson$Enum$KeystoneAdminUIFieldMetaItemViewFieldMode(String value) {
  switch (value) {
    case r'edit':
      return Enum$KeystoneAdminUIFieldMetaItemViewFieldMode.edit;
    case r'read':
      return Enum$KeystoneAdminUIFieldMetaItemViewFieldMode.read;
    case r'hidden':
      return Enum$KeystoneAdminUIFieldMetaItemViewFieldMode.hidden;
    default:
      return Enum$KeystoneAdminUIFieldMetaItemViewFieldMode.$unknown;
  }
}

enum Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition {
  form,
  sidebar,
  $unknown;

  factory Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition.fromJson(
          String value) =>
      fromJson$Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition(value);

  String toJson() =>
      toJson$Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition(this);
}

String toJson$Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition(
    Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition e) {
  switch (e) {
    case Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition.form:
      return r'form';
    case Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition.sidebar:
      return r'sidebar';
    case Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition.$unknown:
      return r'$unknown';
  }
}

Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition
    fromJson$Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition(String value) {
  switch (value) {
    case r'form':
      return Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition.form;
    case r'sidebar':
      return Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition.sidebar;
    default:
      return Enum$KeystoneAdminUIFieldMetaItemViewFieldPosition.$unknown;
  }
}

enum Enum$QueryMode {
  $default,
  insensitive,
  $unknown;

  factory Enum$QueryMode.fromJson(String value) =>
      fromJson$Enum$QueryMode(value);

  String toJson() => toJson$Enum$QueryMode(this);
}

String toJson$Enum$QueryMode(Enum$QueryMode e) {
  switch (e) {
    case Enum$QueryMode.$default:
      return r'default';
    case Enum$QueryMode.insensitive:
      return r'insensitive';
    case Enum$QueryMode.$unknown:
      return r'$unknown';
  }
}

Enum$QueryMode fromJson$Enum$QueryMode(String value) {
  switch (value) {
    case r'default':
      return Enum$QueryMode.$default;
    case r'insensitive':
      return Enum$QueryMode.insensitive;
    default:
      return Enum$QueryMode.$unknown;
  }
}

enum Enum$KeystoneAdminUISortDirection {
  ASC,
  DESC,
  $unknown;

  factory Enum$KeystoneAdminUISortDirection.fromJson(String value) =>
      fromJson$Enum$KeystoneAdminUISortDirection(value);

  String toJson() => toJson$Enum$KeystoneAdminUISortDirection(this);
}

String toJson$Enum$KeystoneAdminUISortDirection(
    Enum$KeystoneAdminUISortDirection e) {
  switch (e) {
    case Enum$KeystoneAdminUISortDirection.ASC:
      return r'ASC';
    case Enum$KeystoneAdminUISortDirection.DESC:
      return r'DESC';
    case Enum$KeystoneAdminUISortDirection.$unknown:
      return r'$unknown';
  }
}

Enum$KeystoneAdminUISortDirection fromJson$Enum$KeystoneAdminUISortDirection(
    String value) {
  switch (value) {
    case r'ASC':
      return Enum$KeystoneAdminUISortDirection.ASC;
    case r'DESC':
      return Enum$KeystoneAdminUISortDirection.DESC;
    default:
      return Enum$KeystoneAdminUISortDirection.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'UserAuthenticationWithPasswordResult': {
    'UserAuthenticationWithPasswordSuccess',
    'UserAuthenticationWithPasswordFailure',
  },
  'AuthenticatedItem': {'User'},
};
