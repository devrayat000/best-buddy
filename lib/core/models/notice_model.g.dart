// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_model.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class NoticeModelCollectionReference
    implements
        NoticeModelQuery,
        FirestoreCollectionReference<NoticeModel, NoticeModelQuerySnapshot> {
  factory NoticeModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$NoticeModelCollectionReference;

  static NoticeModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return NoticeModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    NoticeModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<NoticeModel> get reference;

  @override
  NoticeModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<NoticeModelDocumentReference> add(NoticeModel value);
}

class _$NoticeModelCollectionReference extends _$NoticeModelQuery
    implements NoticeModelCollectionReference {
  factory _$NoticeModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$NoticeModelCollectionReference._(
      firestore.collection('notices').withConverter(
            fromFirestore: NoticeModelCollectionReference.fromFirestore,
            toFirestore: NoticeModelCollectionReference.toFirestore,
          ),
    );
  }

  _$NoticeModelCollectionReference._(
    CollectionReference<NoticeModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<NoticeModel> get reference =>
      super.reference as CollectionReference<NoticeModel>;

  @override
  NoticeModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return NoticeModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<NoticeModelDocumentReference> add(NoticeModel value) {
    return reference
        .add(value)
        .then((ref) => NoticeModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$NoticeModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class NoticeModelDocumentReference extends FirestoreDocumentReference<
    NoticeModel, NoticeModelDocumentSnapshot> {
  factory NoticeModelDocumentReference(
          DocumentReference<NoticeModel> reference) =
      _$NoticeModelDocumentReference;

  DocumentReference<NoticeModel> get reference;

  /// A reference to the [NoticeModelCollectionReference] containing this document.
  NoticeModelCollectionReference get parent {
    return _$NoticeModelCollectionReference(reference.firestore);
  }

  @override
  Stream<NoticeModelDocumentSnapshot> snapshots();

  @override
  Future<NoticeModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    NoticeModel model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue titleFieldValue,
    FieldValue contentFieldValue,
    FieldValue createdByIdFieldValue,
    FieldValue createdByNameFieldValue,
    FieldValue createdByRoleFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    NoticeModel model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue titleFieldValue,
    FieldValue contentFieldValue,
    FieldValue createdByIdFieldValue,
    FieldValue createdByNameFieldValue,
    FieldValue createdByRoleFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    NoticeModel model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue titleFieldValue,
    FieldValue contentFieldValue,
    FieldValue createdByIdFieldValue,
    FieldValue createdByNameFieldValue,
    FieldValue createdByRoleFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? id,
    FieldValue idFieldValue,
    String title,
    FieldValue titleFieldValue,
    String content,
    FieldValue contentFieldValue,
    String createdById,
    FieldValue createdByIdFieldValue,
    String? createdByName,
    FieldValue createdByNameFieldValue,
    UserRole? createdByRole,
    FieldValue createdByRoleFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? id,
    FieldValue idFieldValue,
    String title,
    FieldValue titleFieldValue,
    String content,
    FieldValue contentFieldValue,
    String createdById,
    FieldValue createdByIdFieldValue,
    String? createdByName,
    FieldValue createdByNameFieldValue,
    UserRole? createdByRole,
    FieldValue createdByRoleFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String? id,
    FieldValue idFieldValue,
    String title,
    FieldValue titleFieldValue,
    String content,
    FieldValue contentFieldValue,
    String createdById,
    FieldValue createdByIdFieldValue,
    String? createdByName,
    FieldValue createdByNameFieldValue,
    UserRole? createdByRole,
    FieldValue createdByRoleFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });
}

class _$NoticeModelDocumentReference
    extends FirestoreDocumentReference<NoticeModel, NoticeModelDocumentSnapshot>
    implements NoticeModelDocumentReference {
  _$NoticeModelDocumentReference(this.reference);

  @override
  final DocumentReference<NoticeModel> reference;

  /// A reference to the [NoticeModelCollectionReference] containing this document.
  NoticeModelCollectionReference get parent {
    return _$NoticeModelCollectionReference(reference.firestore);
  }

  @override
  Stream<NoticeModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(NoticeModelDocumentSnapshot._);
  }

  @override
  Future<NoticeModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(NoticeModelDocumentSnapshot._);
  }

  @override
  Future<NoticeModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(NoticeModelDocumentSnapshot._);
  }

  Future<void> set(
    NoticeModel model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? titleFieldValue,
    FieldValue? contentFieldValue,
    FieldValue? createdByIdFieldValue,
    FieldValue? createdByNameFieldValue,
    FieldValue? createdByRoleFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$$NoticeModelImplFieldMap['id']!: idFieldValue,
      if (titleFieldValue != null)
        _$$NoticeModelImplFieldMap['title']!: titleFieldValue,
      if (contentFieldValue != null)
        _$$NoticeModelImplFieldMap['content']!: contentFieldValue,
      if (createdByIdFieldValue != null)
        _$$NoticeModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByNameFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByName']!: createdByNameFieldValue,
      if (createdByRoleFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByRole']!: createdByRoleFieldValue,
      if (createdAtFieldValue != null)
        _$$NoticeModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$$NoticeModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    NoticeModel model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? titleFieldValue,
    FieldValue? contentFieldValue,
    FieldValue? createdByIdFieldValue,
    FieldValue? createdByNameFieldValue,
    FieldValue? createdByRoleFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$$NoticeModelImplFieldMap['id']!: idFieldValue,
      if (titleFieldValue != null)
        _$$NoticeModelImplFieldMap['title']!: titleFieldValue,
      if (contentFieldValue != null)
        _$$NoticeModelImplFieldMap['content']!: contentFieldValue,
      if (createdByIdFieldValue != null)
        _$$NoticeModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByNameFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByName']!: createdByNameFieldValue,
      if (createdByRoleFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByRole']!: createdByRoleFieldValue,
      if (createdAtFieldValue != null)
        _$$NoticeModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$$NoticeModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    NoticeModel model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? titleFieldValue,
    FieldValue? contentFieldValue,
    FieldValue? createdByIdFieldValue,
    FieldValue? createdByNameFieldValue,
    FieldValue? createdByRoleFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$$NoticeModelImplFieldMap['id']!: idFieldValue,
      if (titleFieldValue != null)
        _$$NoticeModelImplFieldMap['title']!: titleFieldValue,
      if (contentFieldValue != null)
        _$$NoticeModelImplFieldMap['content']!: contentFieldValue,
      if (createdByIdFieldValue != null)
        _$$NoticeModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByNameFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByName']!: createdByNameFieldValue,
      if (createdByRoleFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByRole']!: createdByRoleFieldValue,
      if (createdAtFieldValue != null)
        _$$NoticeModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$$NoticeModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? content = _sentinel,
    FieldValue? contentFieldValue,
    Object? createdById = _sentinel,
    FieldValue? createdByIdFieldValue,
    Object? createdByName = _sentinel,
    FieldValue? createdByNameFieldValue,
    Object? createdByRole = _sentinel,
    FieldValue? createdByRoleFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      content == _sentinel || contentFieldValue == null,
      "Cannot specify both content and contentFieldValue",
    );
    assert(
      createdById == _sentinel || createdByIdFieldValue == null,
      "Cannot specify both createdById and createdByIdFieldValue",
    );
    assert(
      createdByName == _sentinel || createdByNameFieldValue == null,
      "Cannot specify both createdByName and createdByNameFieldValue",
    );
    assert(
      createdByRole == _sentinel || createdByRoleFieldValue == null,
      "Cannot specify both createdByRole and createdByRoleFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$NoticeModelImplFieldMap['id']!:
            _$$NoticeModelImplPerFieldToJson.id(id as String?),
      if (idFieldValue != null) _$$NoticeModelImplFieldMap['id']!: idFieldValue,
      if (title != _sentinel)
        _$$NoticeModelImplFieldMap['title']!:
            _$$NoticeModelImplPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$$NoticeModelImplFieldMap['title']!: titleFieldValue,
      if (content != _sentinel)
        _$$NoticeModelImplFieldMap['content']!:
            _$$NoticeModelImplPerFieldToJson.content(content as String),
      if (contentFieldValue != null)
        _$$NoticeModelImplFieldMap['content']!: contentFieldValue,
      if (createdById != _sentinel)
        _$$NoticeModelImplFieldMap['createdById']!:
            _$$NoticeModelImplPerFieldToJson.createdById(createdById as String),
      if (createdByIdFieldValue != null)
        _$$NoticeModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByName != _sentinel)
        _$$NoticeModelImplFieldMap['createdByName']!:
            _$$NoticeModelImplPerFieldToJson
                .createdByName(createdByName as String?),
      if (createdByNameFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByName']!: createdByNameFieldValue,
      if (createdByRole != _sentinel)
        _$$NoticeModelImplFieldMap['createdByRole']!:
            _$$NoticeModelImplPerFieldToJson
                .createdByRole(createdByRole as UserRole?),
      if (createdByRoleFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByRole']!: createdByRoleFieldValue,
      if (createdAt != _sentinel)
        _$$NoticeModelImplFieldMap['createdAt']!:
            _$$NoticeModelImplPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$$NoticeModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$$NoticeModelImplFieldMap['updatedAt']!:
            _$$NoticeModelImplPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$$NoticeModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? content = _sentinel,
    FieldValue? contentFieldValue,
    Object? createdById = _sentinel,
    FieldValue? createdByIdFieldValue,
    Object? createdByName = _sentinel,
    FieldValue? createdByNameFieldValue,
    Object? createdByRole = _sentinel,
    FieldValue? createdByRoleFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      content == _sentinel || contentFieldValue == null,
      "Cannot specify both content and contentFieldValue",
    );
    assert(
      createdById == _sentinel || createdByIdFieldValue == null,
      "Cannot specify both createdById and createdByIdFieldValue",
    );
    assert(
      createdByName == _sentinel || createdByNameFieldValue == null,
      "Cannot specify both createdByName and createdByNameFieldValue",
    );
    assert(
      createdByRole == _sentinel || createdByRoleFieldValue == null,
      "Cannot specify both createdByRole and createdByRoleFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$NoticeModelImplFieldMap['id']!:
            _$$NoticeModelImplPerFieldToJson.id(id as String?),
      if (idFieldValue != null) _$$NoticeModelImplFieldMap['id']!: idFieldValue,
      if (title != _sentinel)
        _$$NoticeModelImplFieldMap['title']!:
            _$$NoticeModelImplPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$$NoticeModelImplFieldMap['title']!: titleFieldValue,
      if (content != _sentinel)
        _$$NoticeModelImplFieldMap['content']!:
            _$$NoticeModelImplPerFieldToJson.content(content as String),
      if (contentFieldValue != null)
        _$$NoticeModelImplFieldMap['content']!: contentFieldValue,
      if (createdById != _sentinel)
        _$$NoticeModelImplFieldMap['createdById']!:
            _$$NoticeModelImplPerFieldToJson.createdById(createdById as String),
      if (createdByIdFieldValue != null)
        _$$NoticeModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByName != _sentinel)
        _$$NoticeModelImplFieldMap['createdByName']!:
            _$$NoticeModelImplPerFieldToJson
                .createdByName(createdByName as String?),
      if (createdByNameFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByName']!: createdByNameFieldValue,
      if (createdByRole != _sentinel)
        _$$NoticeModelImplFieldMap['createdByRole']!:
            _$$NoticeModelImplPerFieldToJson
                .createdByRole(createdByRole as UserRole?),
      if (createdByRoleFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByRole']!: createdByRoleFieldValue,
      if (createdAt != _sentinel)
        _$$NoticeModelImplFieldMap['createdAt']!:
            _$$NoticeModelImplPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$$NoticeModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$$NoticeModelImplFieldMap['updatedAt']!:
            _$$NoticeModelImplPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$$NoticeModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? content = _sentinel,
    FieldValue? contentFieldValue,
    Object? createdById = _sentinel,
    FieldValue? createdByIdFieldValue,
    Object? createdByName = _sentinel,
    FieldValue? createdByNameFieldValue,
    Object? createdByRole = _sentinel,
    FieldValue? createdByRoleFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      content == _sentinel || contentFieldValue == null,
      "Cannot specify both content and contentFieldValue",
    );
    assert(
      createdById == _sentinel || createdByIdFieldValue == null,
      "Cannot specify both createdById and createdByIdFieldValue",
    );
    assert(
      createdByName == _sentinel || createdByNameFieldValue == null,
      "Cannot specify both createdByName and createdByNameFieldValue",
    );
    assert(
      createdByRole == _sentinel || createdByRoleFieldValue == null,
      "Cannot specify both createdByRole and createdByRoleFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$NoticeModelImplFieldMap['id']!:
            _$$NoticeModelImplPerFieldToJson.id(id as String?),
      if (idFieldValue != null) _$$NoticeModelImplFieldMap['id']!: idFieldValue,
      if (title != _sentinel)
        _$$NoticeModelImplFieldMap['title']!:
            _$$NoticeModelImplPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$$NoticeModelImplFieldMap['title']!: titleFieldValue,
      if (content != _sentinel)
        _$$NoticeModelImplFieldMap['content']!:
            _$$NoticeModelImplPerFieldToJson.content(content as String),
      if (contentFieldValue != null)
        _$$NoticeModelImplFieldMap['content']!: contentFieldValue,
      if (createdById != _sentinel)
        _$$NoticeModelImplFieldMap['createdById']!:
            _$$NoticeModelImplPerFieldToJson.createdById(createdById as String),
      if (createdByIdFieldValue != null)
        _$$NoticeModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByName != _sentinel)
        _$$NoticeModelImplFieldMap['createdByName']!:
            _$$NoticeModelImplPerFieldToJson
                .createdByName(createdByName as String?),
      if (createdByNameFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByName']!: createdByNameFieldValue,
      if (createdByRole != _sentinel)
        _$$NoticeModelImplFieldMap['createdByRole']!:
            _$$NoticeModelImplPerFieldToJson
                .createdByRole(createdByRole as UserRole?),
      if (createdByRoleFieldValue != null)
        _$$NoticeModelImplFieldMap['createdByRole']!: createdByRoleFieldValue,
      if (createdAt != _sentinel)
        _$$NoticeModelImplFieldMap['createdAt']!:
            _$$NoticeModelImplPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$$NoticeModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$$NoticeModelImplFieldMap['updatedAt']!:
            _$$NoticeModelImplPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$$NoticeModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is NoticeModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class NoticeModelQuery
    implements QueryReference<NoticeModel, NoticeModelQuerySnapshot> {
  @override
  NoticeModelQuery limit(int limit);

  @override
  NoticeModelQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  NoticeModelQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  NoticeModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  NoticeModelQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  NoticeModelQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  NoticeModelQuery whereContent({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  NoticeModelQuery whereCreatedById({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  NoticeModelQuery whereCreatedByName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  NoticeModelQuery whereCreatedByRole({
    UserRole? isEqualTo,
    UserRole? isNotEqualTo,
    UserRole? isLessThan,
    UserRole? isLessThanOrEqualTo,
    UserRole? isGreaterThan,
    UserRole? isGreaterThanOrEqualTo,
    List<UserRole?>? whereIn,
    List<UserRole?>? whereNotIn,
    bool? isNull,
  });

  NoticeModelQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  NoticeModelQuery whereUpdatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  NoticeModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });

  NoticeModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });

  NoticeModelQuery orderById({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });

  NoticeModelQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });

  NoticeModelQuery orderByContent({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });

  NoticeModelQuery orderByCreatedById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });

  NoticeModelQuery orderByCreatedByName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });

  NoticeModelQuery orderByCreatedByRole({
    bool descending = false,
    UserRole? startAt,
    UserRole? startAfter,
    UserRole? endAt,
    UserRole? endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });

  NoticeModelQuery orderByCreatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });

  NoticeModelQuery orderByUpdatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  });
}

class _$NoticeModelQuery
    extends QueryReference<NoticeModel, NoticeModelQuerySnapshot>
    implements NoticeModelQuery {
  _$NoticeModelQuery(
    this._collection, {
    required Query<NoticeModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<NoticeModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(NoticeModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<NoticeModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(NoticeModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  NoticeModelQuery limit(int limit) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery limitToLast(int limit) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$NoticeModelImplFieldMap['id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson.id(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson.id(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$$NoticeModelImplPerFieldToJson.id(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .id(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$NoticeModelImplPerFieldToJson.id(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .id(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$$NoticeModelImplPerFieldToJson.id(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$NoticeModelImplPerFieldToJson.id(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$NoticeModelImplFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$NoticeModelImplPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$NoticeModelImplPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$$NoticeModelImplPerFieldToJson.title(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$NoticeModelImplPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereContent({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$NoticeModelImplFieldMap['content']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson.content(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson.content(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$NoticeModelImplPerFieldToJson.content(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .content(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$NoticeModelImplPerFieldToJson.content(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .content(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$$NoticeModelImplPerFieldToJson.content(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$NoticeModelImplPerFieldToJson.content(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereCreatedById({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$NoticeModelImplFieldMap['createdById']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson.createdById(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson
                .createdById(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$NoticeModelImplPerFieldToJson.createdById(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdById(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdById(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdById(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$NoticeModelImplPerFieldToJson.createdById(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$NoticeModelImplPerFieldToJson.createdById(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereCreatedByName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$NoticeModelImplFieldMap['createdByName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson
                .createdByName(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson
                .createdByName(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdByName(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdByName(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdByName(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdByName(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$NoticeModelImplPerFieldToJson.createdByName(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$NoticeModelImplPerFieldToJson.createdByName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereCreatedByRole({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<UserRole?>? whereIn,
    List<UserRole?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$NoticeModelImplFieldMap['createdByRole']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson
                .createdByRole(isEqualTo as UserRole?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson
                .createdByRole(isNotEqualTo as UserRole?)
            : null,
        isLessThan: isLessThan != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdByRole(isLessThan as UserRole?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdByRole(isLessThanOrEqualTo as UserRole?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdByRole(isGreaterThan as UserRole?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdByRole(isGreaterThanOrEqualTo as UserRole?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$NoticeModelImplPerFieldToJson.createdByRole(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$NoticeModelImplPerFieldToJson.createdByRole(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereCreatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$NoticeModelImplFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson.createdAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson
                .createdAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn:
            whereIn?.map((e) => _$$NoticeModelImplPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$NoticeModelImplPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery whereUpdatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$NoticeModelImplFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson.updatedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$NoticeModelImplPerFieldToJson
                .updatedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$$NoticeModelImplPerFieldToJson
                .updatedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$NoticeModelImplPerFieldToJson
                .updatedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$NoticeModelImplPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn:
            whereIn?.map((e) => _$$NoticeModelImplPerFieldToJson.updatedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$NoticeModelImplPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NoticeModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NoticeModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NoticeModelQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$NoticeModelImplFieldMap['id']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NoticeModelQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$NoticeModelImplFieldMap['title']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NoticeModelQuery orderByContent({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$NoticeModelImplFieldMap['content']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NoticeModelQuery orderByCreatedById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$NoticeModelImplFieldMap['createdById']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NoticeModelQuery orderByCreatedByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$NoticeModelImplFieldMap['createdByName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NoticeModelQuery orderByCreatedByRole({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$NoticeModelImplFieldMap['createdByRole']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NoticeModelQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$NoticeModelImplFieldMap['createdAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NoticeModelQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NoticeModelDocumentSnapshot? startAtDocument,
    NoticeModelDocumentSnapshot? endAtDocument,
    NoticeModelDocumentSnapshot? endBeforeDocument,
    NoticeModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$NoticeModelImplFieldMap['updatedAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NoticeModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$NoticeModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class NoticeModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<NoticeModel> {
  NoticeModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<NoticeModel> snapshot;

  @override
  NoticeModelDocumentReference get reference {
    return NoticeModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final NoticeModel? data;
}

class NoticeModelQuerySnapshot extends FirestoreQuerySnapshot<NoticeModel,
    NoticeModelQueryDocumentSnapshot> {
  NoticeModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory NoticeModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<NoticeModel> snapshot,
  ) {
    final docs = snapshot.docs.map(NoticeModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        NoticeModelDocumentSnapshot._,
      );
    }).toList();

    return NoticeModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<NoticeModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    NoticeModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<NoticeModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<NoticeModel> snapshot;

  @override
  final List<NoticeModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<NoticeModelDocumentSnapshot>> docChanges;
}

class NoticeModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<NoticeModel>
    implements NoticeModelDocumentSnapshot {
  NoticeModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<NoticeModel> snapshot;

  @override
  final NoticeModel data;

  @override
  NoticeModelDocumentReference get reference {
    return NoticeModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeModelImpl _$$NoticeModelImplFromJson(Map<String, dynamic> json) =>
    _$NoticeModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
      createdById: json['created_by_id'] as String,
      createdByName: json['created_by_name'] as String?,
      createdByRole:
          $enumDecodeNullable(_$UserRoleEnumMap, json['created_by_role']),
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as Timestamp?),
      updatedAt:
          const TimestampConverter().fromJson(json['updated_at'] as Timestamp?),
    );

Map<String, dynamic> _$$NoticeModelImplToJson(_$NoticeModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'title': instance.title,
      'content': instance.content,
      'created_by_id': instance.createdById,
      if (instance.createdByName case final value?) 'created_by_name': value,
      if (_$UserRoleEnumMap[instance.createdByRole] case final value?)
        'created_by_role': value,
      if (const TimestampConverter().toJson(instance.createdAt)
          case final value?)
        'created_at': value,
      if (const TimestampConverter().toJson(instance.updatedAt)
          case final value?)
        'updated_at': value,
    };

const _$UserRoleEnumMap = {
  UserRole.student: 'student',
  UserRole.cr: 'cr',
};

_$CreateNoticeModelImpl _$$CreateNoticeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNoticeModelImpl(
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CreateNoticeModelImplToJson(
        _$CreateNoticeModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

_$UpdateNoticeModelImpl _$$UpdateNoticeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateNoticeModelImpl(
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$UpdateNoticeModelImplToJson(
        _$UpdateNoticeModelImpl instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.content case final value?) 'content': value,
    };
