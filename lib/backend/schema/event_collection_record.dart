import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventCollectionRecord extends FirestoreRecord {
  EventCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "start_year" field.
  int? _startYear;
  int get startYear => _startYear ?? 0;
  bool hasStartYear() => _startYear != null;

  // "end_year" field.
  int? _endYear;
  int get endYear => _endYear ?? 0;
  bool hasEndYear() => _endYear != null;

  // "localisation" field.
  String? _localisation;
  String get localisation => _localisation ?? '';
  bool hasLocalisation() => _localisation != null;

  // "event_description" field.
  String? _eventDescription;
  String get eventDescription => _eventDescription ?? '';
  bool hasEventDescription() => _eventDescription != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _eventName = snapshotData['event_name'] as String?;
    _startYear = castToType<int>(snapshotData['start_year']);
    _endYear = castToType<int>(snapshotData['end_year']);
    _localisation = snapshotData['localisation'] as String?;
    _eventDescription = snapshotData['event_description'] as String?;
    _createdBy = snapshotData['created_by'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event_collection');

  static Stream<EventCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventCollectionRecord.fromSnapshot(s));

  static Future<EventCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventCollectionRecord.fromSnapshot(s));

  static EventCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventCollectionRecordData({
  String? eventName,
  int? startYear,
  int? endYear,
  String? localisation,
  String? eventDescription,
  String? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_name': eventName,
      'start_year': startYear,
      'end_year': endYear,
      'localisation': localisation,
      'event_description': eventDescription,
      'created_by': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventCollectionRecordDocumentEquality
    implements Equality<EventCollectionRecord> {
  const EventCollectionRecordDocumentEquality();

  @override
  bool equals(EventCollectionRecord? e1, EventCollectionRecord? e2) {
    return e1?.eventName == e2?.eventName &&
        e1?.startYear == e2?.startYear &&
        e1?.endYear == e2?.endYear &&
        e1?.localisation == e2?.localisation &&
        e1?.eventDescription == e2?.eventDescription &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(EventCollectionRecord? e) => const ListEquality().hash([
        e?.eventName,
        e?.startYear,
        e?.endYear,
        e?.localisation,
        e?.eventDescription,
        e?.createdBy
      ]);

  @override
  bool isValidKey(Object? o) => o is EventCollectionRecord;
}
