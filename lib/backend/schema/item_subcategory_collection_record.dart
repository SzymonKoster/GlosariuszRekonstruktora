import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ItemSubcategoryCollectionRecord extends FirestoreRecord {
  ItemSubcategoryCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "categoryRef" field.
  String? _categoryRef;
  String get categoryRef => _categoryRef ?? '';
  bool hasCategoryRef() => _categoryRef != null;

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  void _initializeFields() {
    _categoryRef = snapshotData['categoryRef'] as String?;
    _output = snapshotData['output'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('item_subcategory_collection');

  static Stream<ItemSubcategoryCollectionRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => ItemSubcategoryCollectionRecord.fromSnapshot(s));

  static Future<ItemSubcategoryCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ItemSubcategoryCollectionRecord.fromSnapshot(s));

  static ItemSubcategoryCollectionRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      ItemSubcategoryCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemSubcategoryCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemSubcategoryCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemSubcategoryCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemSubcategoryCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemSubcategoryCollectionRecordData({
  String? categoryRef,
  String? output,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categoryRef': categoryRef,
      'output': output,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemSubcategoryCollectionRecordDocumentEquality
    implements Equality<ItemSubcategoryCollectionRecord> {
  const ItemSubcategoryCollectionRecordDocumentEquality();

  @override
  bool equals(ItemSubcategoryCollectionRecord? e1,
      ItemSubcategoryCollectionRecord? e2) {
    return e1?.categoryRef == e2?.categoryRef && e1?.output == e2?.output;
  }

  @override
  int hash(ItemSubcategoryCollectionRecord? e) =>
      const ListEquality().hash([e?.categoryRef, e?.output]);

  @override
  bool isValidKey(Object? o) => o is ItemSubcategoryCollectionRecord;
}
