// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_test_model.dart';

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
abstract class ClassTestModelCollectionReference
    implements
        ClassTestModelQuery,
        FirestoreCollectionReference<ClassTestModel,
            ClassTestModelQuerySnapshot> {
  factory ClassTestModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ClassTestModelCollectionReference;

  static ClassTestModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ClassTestModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ClassTestModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<ClassTestModel> get reference;

  @override
  ClassTestModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ClassTestModelDocumentReference> add(ClassTestModel value);
}

class _$ClassTestModelCollectionReference extends _$ClassTestModelQuery
    implements ClassTestModelCollectionReference {
  factory _$ClassTestModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ClassTestModelCollectionReference._(
      firestore.collection('class_tests').withConverter(
            fromFirestore: ClassTestModelCollectionReference.fromFirestore,
            toFirestore: ClassTestModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ClassTestModelCollectionReference._(
    CollectionReference<ClassTestModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ClassTestModel> get reference =>
      super.reference as CollectionReference<ClassTestModel>;

  @override
  ClassTestModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ClassTestModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ClassTestModelDocumentReference> add(ClassTestModel value) {
    return reference
        .add(value)
        .then((ref) => ClassTestModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ClassTestModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ClassTestModelDocumentReference
    extends FirestoreDocumentReference<ClassTestModel,
        ClassTestModelDocumentSnapshot> {
  factory ClassTestModelDocumentReference(
          DocumentReference<ClassTestModel> reference) =
      _$ClassTestModelDocumentReference;

  DocumentReference<ClassTestModel> get reference;

  /// A reference to the [ClassTestModelCollectionReference] containing this document.
  ClassTestModelCollectionReference get parent {
    return _$ClassTestModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ClassTestModelDocumentSnapshot> snapshots();

  @override
  Future<ClassTestModelDocumentSnapshot> get([GetOptions? options]);

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
    ClassTestModel model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue titleFieldValue,
    FieldValue subjectFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue testDateFieldValue,
    FieldValue createdByIdFieldValue,
    FieldValue createdByNameFieldValue,
    FieldValue createdByRoleFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue locationFieldValue,
    FieldValue instructionsFieldValue,
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
    ClassTestModel model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue titleFieldValue,
    FieldValue subjectFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue testDateFieldValue,
    FieldValue createdByIdFieldValue,
    FieldValue createdByNameFieldValue,
    FieldValue createdByRoleFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue locationFieldValue,
    FieldValue instructionsFieldValue,
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
    ClassTestModel model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue titleFieldValue,
    FieldValue subjectFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue testDateFieldValue,
    FieldValue createdByIdFieldValue,
    FieldValue createdByNameFieldValue,
    FieldValue createdByRoleFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue locationFieldValue,
    FieldValue instructionsFieldValue,
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
    String subject,
    FieldValue subjectFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    DateTime testDate,
    FieldValue testDateFieldValue,
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
    String? location,
    FieldValue locationFieldValue,
    String? instructions,
    FieldValue instructionsFieldValue,
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
    String subject,
    FieldValue subjectFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    DateTime testDate,
    FieldValue testDateFieldValue,
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
    String? location,
    FieldValue locationFieldValue,
    String? instructions,
    FieldValue instructionsFieldValue,
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
    String subject,
    FieldValue subjectFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    DateTime testDate,
    FieldValue testDateFieldValue,
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
    String? location,
    FieldValue locationFieldValue,
    String? instructions,
    FieldValue instructionsFieldValue,
  });
}

class _$ClassTestModelDocumentReference extends FirestoreDocumentReference<
    ClassTestModel,
    ClassTestModelDocumentSnapshot> implements ClassTestModelDocumentReference {
  _$ClassTestModelDocumentReference(this.reference);

  @override
  final DocumentReference<ClassTestModel> reference;

  /// A reference to the [ClassTestModelCollectionReference] containing this document.
  ClassTestModelCollectionReference get parent {
    return _$ClassTestModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ClassTestModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ClassTestModelDocumentSnapshot._);
  }

  @override
  Future<ClassTestModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ClassTestModelDocumentSnapshot._);
  }

  @override
  Future<ClassTestModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ClassTestModelDocumentSnapshot._);
  }

  Future<void> set(
    ClassTestModel model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? titleFieldValue,
    FieldValue? subjectFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? testDateFieldValue,
    FieldValue? createdByIdFieldValue,
    FieldValue? createdByNameFieldValue,
    FieldValue? createdByRoleFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? locationFieldValue,
    FieldValue? instructionsFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null)
        _$$ClassTestModelImplFieldMap['id']!: idFieldValue,
      if (titleFieldValue != null)
        _$$ClassTestModelImplFieldMap['title']!: titleFieldValue,
      if (subjectFieldValue != null)
        _$$ClassTestModelImplFieldMap['subject']!: subjectFieldValue,
      if (descriptionFieldValue != null)
        _$$ClassTestModelImplFieldMap['description']!: descriptionFieldValue,
      if (testDateFieldValue != null)
        _$$ClassTestModelImplFieldMap['testDate']!: testDateFieldValue,
      if (createdByIdFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByNameFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByName']!:
            createdByNameFieldValue,
      if (createdByRoleFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByRole']!:
            createdByRoleFieldValue,
      if (createdAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
      if (locationFieldValue != null)
        _$$ClassTestModelImplFieldMap['location']!: locationFieldValue,
      if (instructionsFieldValue != null)
        _$$ClassTestModelImplFieldMap['instructions']!: instructionsFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    ClassTestModel model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? titleFieldValue,
    FieldValue? subjectFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? testDateFieldValue,
    FieldValue? createdByIdFieldValue,
    FieldValue? createdByNameFieldValue,
    FieldValue? createdByRoleFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? locationFieldValue,
    FieldValue? instructionsFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null)
        _$$ClassTestModelImplFieldMap['id']!: idFieldValue,
      if (titleFieldValue != null)
        _$$ClassTestModelImplFieldMap['title']!: titleFieldValue,
      if (subjectFieldValue != null)
        _$$ClassTestModelImplFieldMap['subject']!: subjectFieldValue,
      if (descriptionFieldValue != null)
        _$$ClassTestModelImplFieldMap['description']!: descriptionFieldValue,
      if (testDateFieldValue != null)
        _$$ClassTestModelImplFieldMap['testDate']!: testDateFieldValue,
      if (createdByIdFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByNameFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByName']!:
            createdByNameFieldValue,
      if (createdByRoleFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByRole']!:
            createdByRoleFieldValue,
      if (createdAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
      if (locationFieldValue != null)
        _$$ClassTestModelImplFieldMap['location']!: locationFieldValue,
      if (instructionsFieldValue != null)
        _$$ClassTestModelImplFieldMap['instructions']!: instructionsFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    ClassTestModel model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? titleFieldValue,
    FieldValue? subjectFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? testDateFieldValue,
    FieldValue? createdByIdFieldValue,
    FieldValue? createdByNameFieldValue,
    FieldValue? createdByRoleFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? locationFieldValue,
    FieldValue? instructionsFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null)
        _$$ClassTestModelImplFieldMap['id']!: idFieldValue,
      if (titleFieldValue != null)
        _$$ClassTestModelImplFieldMap['title']!: titleFieldValue,
      if (subjectFieldValue != null)
        _$$ClassTestModelImplFieldMap['subject']!: subjectFieldValue,
      if (descriptionFieldValue != null)
        _$$ClassTestModelImplFieldMap['description']!: descriptionFieldValue,
      if (testDateFieldValue != null)
        _$$ClassTestModelImplFieldMap['testDate']!: testDateFieldValue,
      if (createdByIdFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByNameFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByName']!:
            createdByNameFieldValue,
      if (createdByRoleFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByRole']!:
            createdByRoleFieldValue,
      if (createdAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
      if (locationFieldValue != null)
        _$$ClassTestModelImplFieldMap['location']!: locationFieldValue,
      if (instructionsFieldValue != null)
        _$$ClassTestModelImplFieldMap['instructions']!: instructionsFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? subject = _sentinel,
    FieldValue? subjectFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? testDate = _sentinel,
    FieldValue? testDateFieldValue,
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
    Object? location = _sentinel,
    FieldValue? locationFieldValue,
    Object? instructions = _sentinel,
    FieldValue? instructionsFieldValue,
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
      subject == _sentinel || subjectFieldValue == null,
      "Cannot specify both subject and subjectFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      testDate == _sentinel || testDateFieldValue == null,
      "Cannot specify both testDate and testDateFieldValue",
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
    assert(
      location == _sentinel || locationFieldValue == null,
      "Cannot specify both location and locationFieldValue",
    );
    assert(
      instructions == _sentinel || instructionsFieldValue == null,
      "Cannot specify both instructions and instructionsFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$ClassTestModelImplFieldMap['id']!:
            _$$ClassTestModelImplPerFieldToJson.id(id as String?),
      if (idFieldValue != null)
        _$$ClassTestModelImplFieldMap['id']!: idFieldValue,
      if (title != _sentinel)
        _$$ClassTestModelImplFieldMap['title']!:
            _$$ClassTestModelImplPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$$ClassTestModelImplFieldMap['title']!: titleFieldValue,
      if (subject != _sentinel)
        _$$ClassTestModelImplFieldMap['subject']!:
            _$$ClassTestModelImplPerFieldToJson.subject(subject as String),
      if (subjectFieldValue != null)
        _$$ClassTestModelImplFieldMap['subject']!: subjectFieldValue,
      if (description != _sentinel)
        _$$ClassTestModelImplFieldMap['description']!:
            _$$ClassTestModelImplPerFieldToJson
                .description(description as String),
      if (descriptionFieldValue != null)
        _$$ClassTestModelImplFieldMap['description']!: descriptionFieldValue,
      if (testDate != _sentinel)
        _$$ClassTestModelImplFieldMap['testDate']!:
            _$$ClassTestModelImplPerFieldToJson.testDate(testDate as DateTime),
      if (testDateFieldValue != null)
        _$$ClassTestModelImplFieldMap['testDate']!: testDateFieldValue,
      if (createdById != _sentinel)
        _$$ClassTestModelImplFieldMap['createdById']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdById(createdById as String),
      if (createdByIdFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByName != _sentinel)
        _$$ClassTestModelImplFieldMap['createdByName']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdByName(createdByName as String?),
      if (createdByNameFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByName']!:
            createdByNameFieldValue,
      if (createdByRole != _sentinel)
        _$$ClassTestModelImplFieldMap['createdByRole']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdByRole(createdByRole as UserRole?),
      if (createdByRoleFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByRole']!:
            createdByRoleFieldValue,
      if (createdAt != _sentinel)
        _$$ClassTestModelImplFieldMap['createdAt']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$$ClassTestModelImplFieldMap['updatedAt']!:
            _$$ClassTestModelImplPerFieldToJson
                .updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
      if (location != _sentinel)
        _$$ClassTestModelImplFieldMap['location']!:
            _$$ClassTestModelImplPerFieldToJson.location(location as String?),
      if (locationFieldValue != null)
        _$$ClassTestModelImplFieldMap['location']!: locationFieldValue,
      if (instructions != _sentinel)
        _$$ClassTestModelImplFieldMap['instructions']!:
            _$$ClassTestModelImplPerFieldToJson
                .instructions(instructions as String?),
      if (instructionsFieldValue != null)
        _$$ClassTestModelImplFieldMap['instructions']!: instructionsFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? subject = _sentinel,
    FieldValue? subjectFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? testDate = _sentinel,
    FieldValue? testDateFieldValue,
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
    Object? location = _sentinel,
    FieldValue? locationFieldValue,
    Object? instructions = _sentinel,
    FieldValue? instructionsFieldValue,
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
      subject == _sentinel || subjectFieldValue == null,
      "Cannot specify both subject and subjectFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      testDate == _sentinel || testDateFieldValue == null,
      "Cannot specify both testDate and testDateFieldValue",
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
    assert(
      location == _sentinel || locationFieldValue == null,
      "Cannot specify both location and locationFieldValue",
    );
    assert(
      instructions == _sentinel || instructionsFieldValue == null,
      "Cannot specify both instructions and instructionsFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$ClassTestModelImplFieldMap['id']!:
            _$$ClassTestModelImplPerFieldToJson.id(id as String?),
      if (idFieldValue != null)
        _$$ClassTestModelImplFieldMap['id']!: idFieldValue,
      if (title != _sentinel)
        _$$ClassTestModelImplFieldMap['title']!:
            _$$ClassTestModelImplPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$$ClassTestModelImplFieldMap['title']!: titleFieldValue,
      if (subject != _sentinel)
        _$$ClassTestModelImplFieldMap['subject']!:
            _$$ClassTestModelImplPerFieldToJson.subject(subject as String),
      if (subjectFieldValue != null)
        _$$ClassTestModelImplFieldMap['subject']!: subjectFieldValue,
      if (description != _sentinel)
        _$$ClassTestModelImplFieldMap['description']!:
            _$$ClassTestModelImplPerFieldToJson
                .description(description as String),
      if (descriptionFieldValue != null)
        _$$ClassTestModelImplFieldMap['description']!: descriptionFieldValue,
      if (testDate != _sentinel)
        _$$ClassTestModelImplFieldMap['testDate']!:
            _$$ClassTestModelImplPerFieldToJson.testDate(testDate as DateTime),
      if (testDateFieldValue != null)
        _$$ClassTestModelImplFieldMap['testDate']!: testDateFieldValue,
      if (createdById != _sentinel)
        _$$ClassTestModelImplFieldMap['createdById']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdById(createdById as String),
      if (createdByIdFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByName != _sentinel)
        _$$ClassTestModelImplFieldMap['createdByName']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdByName(createdByName as String?),
      if (createdByNameFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByName']!:
            createdByNameFieldValue,
      if (createdByRole != _sentinel)
        _$$ClassTestModelImplFieldMap['createdByRole']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdByRole(createdByRole as UserRole?),
      if (createdByRoleFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByRole']!:
            createdByRoleFieldValue,
      if (createdAt != _sentinel)
        _$$ClassTestModelImplFieldMap['createdAt']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$$ClassTestModelImplFieldMap['updatedAt']!:
            _$$ClassTestModelImplPerFieldToJson
                .updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
      if (location != _sentinel)
        _$$ClassTestModelImplFieldMap['location']!:
            _$$ClassTestModelImplPerFieldToJson.location(location as String?),
      if (locationFieldValue != null)
        _$$ClassTestModelImplFieldMap['location']!: locationFieldValue,
      if (instructions != _sentinel)
        _$$ClassTestModelImplFieldMap['instructions']!:
            _$$ClassTestModelImplPerFieldToJson
                .instructions(instructions as String?),
      if (instructionsFieldValue != null)
        _$$ClassTestModelImplFieldMap['instructions']!: instructionsFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? subject = _sentinel,
    FieldValue? subjectFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? testDate = _sentinel,
    FieldValue? testDateFieldValue,
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
    Object? location = _sentinel,
    FieldValue? locationFieldValue,
    Object? instructions = _sentinel,
    FieldValue? instructionsFieldValue,
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
      subject == _sentinel || subjectFieldValue == null,
      "Cannot specify both subject and subjectFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      testDate == _sentinel || testDateFieldValue == null,
      "Cannot specify both testDate and testDateFieldValue",
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
    assert(
      location == _sentinel || locationFieldValue == null,
      "Cannot specify both location and locationFieldValue",
    );
    assert(
      instructions == _sentinel || instructionsFieldValue == null,
      "Cannot specify both instructions and instructionsFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$ClassTestModelImplFieldMap['id']!:
            _$$ClassTestModelImplPerFieldToJson.id(id as String?),
      if (idFieldValue != null)
        _$$ClassTestModelImplFieldMap['id']!: idFieldValue,
      if (title != _sentinel)
        _$$ClassTestModelImplFieldMap['title']!:
            _$$ClassTestModelImplPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$$ClassTestModelImplFieldMap['title']!: titleFieldValue,
      if (subject != _sentinel)
        _$$ClassTestModelImplFieldMap['subject']!:
            _$$ClassTestModelImplPerFieldToJson.subject(subject as String),
      if (subjectFieldValue != null)
        _$$ClassTestModelImplFieldMap['subject']!: subjectFieldValue,
      if (description != _sentinel)
        _$$ClassTestModelImplFieldMap['description']!:
            _$$ClassTestModelImplPerFieldToJson
                .description(description as String),
      if (descriptionFieldValue != null)
        _$$ClassTestModelImplFieldMap['description']!: descriptionFieldValue,
      if (testDate != _sentinel)
        _$$ClassTestModelImplFieldMap['testDate']!:
            _$$ClassTestModelImplPerFieldToJson.testDate(testDate as DateTime),
      if (testDateFieldValue != null)
        _$$ClassTestModelImplFieldMap['testDate']!: testDateFieldValue,
      if (createdById != _sentinel)
        _$$ClassTestModelImplFieldMap['createdById']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdById(createdById as String),
      if (createdByIdFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdById']!: createdByIdFieldValue,
      if (createdByName != _sentinel)
        _$$ClassTestModelImplFieldMap['createdByName']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdByName(createdByName as String?),
      if (createdByNameFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByName']!:
            createdByNameFieldValue,
      if (createdByRole != _sentinel)
        _$$ClassTestModelImplFieldMap['createdByRole']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdByRole(createdByRole as UserRole?),
      if (createdByRoleFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdByRole']!:
            createdByRoleFieldValue,
      if (createdAt != _sentinel)
        _$$ClassTestModelImplFieldMap['createdAt']!:
            _$$ClassTestModelImplPerFieldToJson
                .createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$$ClassTestModelImplFieldMap['updatedAt']!:
            _$$ClassTestModelImplPerFieldToJson
                .updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$$ClassTestModelImplFieldMap['updatedAt']!: updatedAtFieldValue,
      if (location != _sentinel)
        _$$ClassTestModelImplFieldMap['location']!:
            _$$ClassTestModelImplPerFieldToJson.location(location as String?),
      if (locationFieldValue != null)
        _$$ClassTestModelImplFieldMap['location']!: locationFieldValue,
      if (instructions != _sentinel)
        _$$ClassTestModelImplFieldMap['instructions']!:
            _$$ClassTestModelImplPerFieldToJson
                .instructions(instructions as String?),
      if (instructionsFieldValue != null)
        _$$ClassTestModelImplFieldMap['instructions']!: instructionsFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ClassTestModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ClassTestModelQuery
    implements QueryReference<ClassTestModel, ClassTestModelQuerySnapshot> {
  @override
  ClassTestModelQuery limit(int limit);

  @override
  ClassTestModelQuery limitToLast(int limit);

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
  ClassTestModelQuery whereFieldPath(
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

  ClassTestModelQuery whereDocumentId({
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

  ClassTestModelQuery whereId({
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

  ClassTestModelQuery whereTitle({
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

  ClassTestModelQuery whereSubject({
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

  ClassTestModelQuery whereDescription({
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

  ClassTestModelQuery whereTestDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  ClassTestModelQuery whereCreatedById({
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

  ClassTestModelQuery whereCreatedByName({
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

  ClassTestModelQuery whereCreatedByRole({
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

  ClassTestModelQuery whereCreatedAt({
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

  ClassTestModelQuery whereUpdatedAt({
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

  ClassTestModelQuery whereLocation({
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

  ClassTestModelQuery whereInstructions({
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
  ClassTestModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderById({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderBySubject({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByTestDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByCreatedById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByCreatedByName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByCreatedByRole({
    bool descending = false,
    UserRole? startAt,
    UserRole? startAfter,
    UserRole? endAt,
    UserRole? endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByCreatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByUpdatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByLocation({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });

  ClassTestModelQuery orderByInstructions({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ClassTestModelQuery
    extends QueryReference<ClassTestModel, ClassTestModelQuerySnapshot>
    implements ClassTestModelQuery {
  _$ClassTestModelQuery(
    this._collection, {
    required Query<ClassTestModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ClassTestModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ClassTestModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ClassTestModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ClassTestModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ClassTestModelQuery limit(int limit) {
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery limitToLast(int limit) {
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereFieldPath(
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
    return _$ClassTestModelQuery(
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
  ClassTestModelQuery whereDocumentId({
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
    return _$ClassTestModelQuery(
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
  ClassTestModelQuery whereId({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson.id(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson.id(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson.id(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .id(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson.id(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .id(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$$ClassTestModelImplPerFieldToJson.id(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$ClassTestModelImplPerFieldToJson.id(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereTitle({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$$ClassTestModelImplPerFieldToJson.title(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereSubject({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['subject']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson.subject(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .subject(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson.subject(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .subject(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .subject(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .subject(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$$ClassTestModelImplPerFieldToJson.subject(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.subject(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereDescription({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.description(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereTestDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['testDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .testDate(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .testDate(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .testDate(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .testDate(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .testDate(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .testDate(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.testDate(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.testDate(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereCreatedById({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['createdById']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .createdById(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .createdById(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdById(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdById(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdById(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdById(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.createdById(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.createdById(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereCreatedByName({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['createdByName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByName(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByName(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByName(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByName(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByName(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByName(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.createdByName(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.createdByName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereCreatedByRole({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['createdByRole']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByRole(isEqualTo as UserRole?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByRole(isNotEqualTo as UserRole?)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByRole(isLessThan as UserRole?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByRole(isLessThanOrEqualTo as UserRole?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByRole(isGreaterThan as UserRole?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdByRole(isGreaterThanOrEqualTo as UserRole?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.createdByRole(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.createdByRole(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereCreatedAt({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .createdAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .createdAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereUpdatedAt({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .updatedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .updatedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .updatedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .updatedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.updatedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereLocation({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['location']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson.location(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .location(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .location(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .location(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .location(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .location(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.location(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.location(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery whereInstructions({
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
    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$ClassTestModelImplFieldMap['instructions']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .instructions(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$ClassTestModelImplPerFieldToJson
                .instructions(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .instructions(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .instructions(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$ClassTestModelImplPerFieldToJson
                .instructions(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$ClassTestModelImplPerFieldToJson
                .instructions(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.instructions(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$ClassTestModelImplPerFieldToJson.instructions(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$ClassTestModelImplFieldMap['id']!, descending: descending);
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['title']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderBySubject({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['subject']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['description']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByTestDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['testDate']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByCreatedById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['createdById']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByCreatedByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['createdByName']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByCreatedByRole({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['createdByRole']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['createdAt']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['updatedAt']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByLocation({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['location']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ClassTestModelQuery orderByInstructions({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ClassTestModelDocumentSnapshot? startAtDocument,
    ClassTestModelDocumentSnapshot? endAtDocument,
    ClassTestModelDocumentSnapshot? endBeforeDocument,
    ClassTestModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$ClassTestModelImplFieldMap['instructions']!,
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

    return _$ClassTestModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ClassTestModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ClassTestModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ClassTestModel> {
  ClassTestModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ClassTestModel> snapshot;

  @override
  ClassTestModelDocumentReference get reference {
    return ClassTestModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ClassTestModel? data;
}

class ClassTestModelQuerySnapshot extends FirestoreQuerySnapshot<ClassTestModel,
    ClassTestModelQueryDocumentSnapshot> {
  ClassTestModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ClassTestModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ClassTestModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ClassTestModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ClassTestModelDocumentSnapshot._,
      );
    }).toList();

    return ClassTestModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ClassTestModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ClassTestModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ClassTestModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ClassTestModel> snapshot;

  @override
  final List<ClassTestModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ClassTestModelDocumentSnapshot>>
      docChanges;
}

class ClassTestModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ClassTestModel>
    implements ClassTestModelDocumentSnapshot {
  ClassTestModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ClassTestModel> snapshot;

  @override
  final ClassTestModel data;

  @override
  ClassTestModelDocumentReference get reference {
    return ClassTestModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassTestModelImpl _$$ClassTestModelImplFromJson(Map<String, dynamic> json) =>
    _$ClassTestModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String,
      testDate: DateTime.parse(json['test_date'] as String),
      createdById: json['created_by_id'] as String,
      createdByName: json['created_by_name'] as String?,
      createdByRole:
          $enumDecodeNullable(_$UserRoleEnumMap, json['created_by_role']),
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as Timestamp?),
      updatedAt:
          const TimestampConverter().fromJson(json['updated_at'] as Timestamp?),
      location: json['location'] as String?,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$$ClassTestModelImplToJson(
        _$ClassTestModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'title': instance.title,
      'subject': instance.subject,
      'description': instance.description,
      'test_date': instance.testDate.toIso8601String(),
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
      if (instance.location case final value?) 'location': value,
      if (instance.instructions case final value?) 'instructions': value,
    };

const _$UserRoleEnumMap = {
  UserRole.student: 'student',
  UserRole.cr: 'cr',
};

_$CreateClassTestModelImpl _$$CreateClassTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateClassTestModelImpl(
      title: json['title'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String,
      testDate: DateTime.parse(json['test_date'] as String),
      location: json['location'] as String?,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$$CreateClassTestModelImplToJson(
        _$CreateClassTestModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'description': instance.description,
      'test_date': instance.testDate.toIso8601String(),
      if (instance.location case final value?) 'location': value,
      if (instance.instructions case final value?) 'instructions': value,
    };

_$UpdateClassTestModelImpl _$$UpdateClassTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateClassTestModelImpl(
      title: json['title'] as String?,
      subject: json['subject'] as String?,
      description: json['description'] as String?,
      testDate: json['test_date'] == null
          ? null
          : DateTime.parse(json['test_date'] as String),
      location: json['location'] as String?,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$$UpdateClassTestModelImplToJson(
        _$UpdateClassTestModelImpl instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.subject case final value?) 'subject': value,
      if (instance.description case final value?) 'description': value,
      if (instance.testDate?.toIso8601String() case final value?)
        'test_date': value,
      if (instance.location case final value?) 'location': value,
      if (instance.instructions case final value?) 'instructions': value,
    };
