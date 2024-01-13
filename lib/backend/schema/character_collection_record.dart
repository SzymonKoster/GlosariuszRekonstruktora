import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharacterCollectionRecord extends FirestoreRecord {
  CharacterCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "origin" field.
  String? _origin;
  String get origin => _origin ?? '';
  bool hasOrigin() => _origin != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "social_class" field.
  String? _socialClass;
  String get socialClass => _socialClass ?? '';
  bool hasSocialClass() => _socialClass != null;

  // "richness_level" field.
  int? _richnessLevel;
  int get richnessLevel => _richnessLevel ?? 0;
  bool hasRichnessLevel() => _richnessLevel != null;

  // "generated_description" field.
  String? _generatedDescription;
  String get generatedDescription => _generatedDescription ?? '';
  bool hasGeneratedDescription() => _generatedDescription != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "character_visualisation" field.
  String? _characterVisualisation;
  String get characterVisualisation => _characterVisualisation ?? '';
  bool hasCharacterVisualisation() => _characterVisualisation != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _gender = snapshotData['gender'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _origin = snapshotData['origin'] as String?;
    _profession = snapshotData['profession'] as String?;
    _socialClass = snapshotData['social_class'] as String?;
    _richnessLevel = castToType<int>(snapshotData['richness_level']);
    _generatedDescription = snapshotData['generated_description'] as String?;
    _createdBy = snapshotData['created_by'] as String?;
    _characterVisualisation =
        snapshotData['character_visualisation'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('character_collection');

  static Stream<CharacterCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CharacterCollectionRecord.fromSnapshot(s));

  static Future<CharacterCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CharacterCollectionRecord.fromSnapshot(s));

  static CharacterCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CharacterCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CharacterCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CharacterCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CharacterCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CharacterCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCharacterCollectionRecordData({
  String? name,
  String? gender,
  int? age,
  String? origin,
  String? profession,
  String? socialClass,
  int? richnessLevel,
  String? generatedDescription,
  String? createdBy,
  String? characterVisualisation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'gender': gender,
      'age': age,
      'origin': origin,
      'profession': profession,
      'social_class': socialClass,
      'richness_level': richnessLevel,
      'generated_description': generatedDescription,
      'created_by': createdBy,
      'character_visualisation': characterVisualisation,
    }.withoutNulls,
  );

  return firestoreData;
}

class CharacterCollectionRecordDocumentEquality
    implements Equality<CharacterCollectionRecord> {
  const CharacterCollectionRecordDocumentEquality();

  @override
  bool equals(CharacterCollectionRecord? e1, CharacterCollectionRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.gender == e2?.gender &&
        e1?.age == e2?.age &&
        e1?.origin == e2?.origin &&
        e1?.profession == e2?.profession &&
        e1?.socialClass == e2?.socialClass &&
        e1?.richnessLevel == e2?.richnessLevel &&
        e1?.generatedDescription == e2?.generatedDescription &&
        e1?.createdBy == e2?.createdBy &&
        e1?.characterVisualisation == e2?.characterVisualisation;
  }

  @override
  int hash(CharacterCollectionRecord? e) => const ListEquality().hash([
        e?.name,
        e?.gender,
        e?.age,
        e?.origin,
        e?.profession,
        e?.socialClass,
        e?.richnessLevel,
        e?.generatedDescription,
        e?.createdBy,
        e?.characterVisualisation
      ]);

  @override
  bool isValidKey(Object? o) => o is CharacterCollectionRecord;
}
