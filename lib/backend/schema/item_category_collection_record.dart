import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ItemCategoryCollectionRecord extends FirestoreRecord {
  ItemCategoryCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "outputPL" field.
  String? _outputPL;
  String get outputPL => _outputPL ?? '';
  bool hasOutputPL() => _outputPL != null;

  // "outputENG" field.
  String? _outputENG;
  String get outputENG => _outputENG ?? '';
  bool hasOutputENG() => _outputENG != null;

  void _initializeFields() {
    _outputPL = snapshotData['outputPL'] as String?;
    _outputENG = snapshotData['outputENG'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('item_category_collection');

  static Stream<ItemCategoryCollectionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ItemCategoryCollectionRecord.fromSnapshot(s));

  static Future<ItemCategoryCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ItemCategoryCollectionRecord.fromSnapshot(s));

  static ItemCategoryCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemCategoryCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemCategoryCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemCategoryCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemCategoryCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemCategoryCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemCategoryCollectionRecordData({
  String? outputPL,
  String? outputENG,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'outputPL': outputPL,
      'outputENG': outputENG,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemCategoryCollectionRecordDocumentEquality
    implements Equality<ItemCategoryCollectionRecord> {
  const ItemCategoryCollectionRecordDocumentEquality();

  @override
  bool equals(
      ItemCategoryCollectionRecord? e1, ItemCategoryCollectionRecord? e2) {
    return e1?.outputPL == e2?.outputPL && e1?.outputENG == e2?.outputENG;
  }

  @override
  int hash(ItemCategoryCollectionRecord? e) =>
      const ListEquality().hash([e?.outputPL, e?.outputENG]);

  @override
  bool isValidKey(Object? o) => o is ItemCategoryCollectionRecord;
}
