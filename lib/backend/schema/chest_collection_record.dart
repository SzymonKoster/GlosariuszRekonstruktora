import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChestCollectionRecord extends FirestoreRecord {
  ChestCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "subcategory" field.
  String? _subcategory;
  String get subcategory => _subcategory ?? '';
  bool hasSubcategory() => _subcategory != null;

  // "richness" field.
  int? _richness;
  int get richness => _richness ?? 0;
  bool hasRichness() => _richness != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "item_description" field.
  String? _itemDescription;
  String get itemDescription => _itemDescription ?? '';
  bool hasItemDescription() => _itemDescription != null;

  void _initializeFields() {
    _itemName = snapshotData['item_name'] as String?;
    _category = snapshotData['category'] as String?;
    _subcategory = snapshotData['subcategory'] as String?;
    _richness = castToType<int>(snapshotData['richness']);
    _photo = snapshotData['photo'] as String?;
    _createdBy = snapshotData['created_by'] as String?;
    _itemDescription = snapshotData['item_description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chest_collection');

  static Stream<ChestCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChestCollectionRecord.fromSnapshot(s));

  static Future<ChestCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChestCollectionRecord.fromSnapshot(s));

  static ChestCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChestCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChestCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChestCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChestCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChestCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChestCollectionRecordData({
  String? itemName,
  String? category,
  String? subcategory,
  int? richness,
  String? photo,
  String? createdBy,
  String? itemDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item_name': itemName,
      'category': category,
      'subcategory': subcategory,
      'richness': richness,
      'photo': photo,
      'created_by': createdBy,
      'item_description': itemDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChestCollectionRecordDocumentEquality
    implements Equality<ChestCollectionRecord> {
  const ChestCollectionRecordDocumentEquality();

  @override
  bool equals(ChestCollectionRecord? e1, ChestCollectionRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.category == e2?.category &&
        e1?.subcategory == e2?.subcategory &&
        e1?.richness == e2?.richness &&
        e1?.photo == e2?.photo &&
        e1?.createdBy == e2?.createdBy &&
        e1?.itemDescription == e2?.itemDescription;
  }

  @override
  int hash(ChestCollectionRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.category,
        e?.subcategory,
        e?.richness,
        e?.photo,
        e?.createdBy,
        e?.itemDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is ChestCollectionRecord;
}
