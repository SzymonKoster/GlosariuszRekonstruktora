import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String fixingString(String invalidString) {
  // Usunięcie nawiasów klamrowych oraz frazy "output":
  String withoutBracketsAndOutput =
      invalidString.replaceAll(RegExp(r'(\{|\}|"output":)'), '');

  // Usunięcie znaków cudzysłowu
  String withoutQuotes = withoutBracketsAndOutput.replaceAll('"', '');

  // Usunięcie podwójnych znaków nowej linii
  String withoutDoubleNewLines = withoutQuotes.replaceAll('\n\n', '\n');

  // Zamiana znaków nowej linii na podwójną spację
  String result = withoutDoubleNewLines.replaceAll('\n', '  ');

  return result.trim(); // Usunięcie zbędnych białych znaków na końcu
}

String fixingStringUTF8(String invalidString) {
  // Zakoduj oryginalny ciąg jako bajty w Latin1
  List<int> bytes = latin1.encode(invalidString);

  // Dekoduj te bajty jako UTF-8
  String decodedText;
  try {
    decodedText = utf8.decode(bytes);
  } catch (e) {
    // W przypadku błędu, użyj oryginalnego ciągu
    decodedText = invalidString;
  }

  // Usunięcie gwiazdek (*)
  String withoutStars = decodedText.replaceAll('*', '');

  // Zamiana \n na przejścia do nowej linii
  String withNewLines = withoutStars.replaceAll('\\n', '\n');

  return withNewLines.trim(); // Usunięcie zbędnych białych znaków na końcu
}
