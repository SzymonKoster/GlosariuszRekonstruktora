// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future createPDFcard(
  String? name,
  String? gender,
  int? age,
  String? origin,
  String? profession,
  String? socialClass,
  String? richness,
  String? description,
  // Usunięto parametr photoPath, ponieważ nie można go użyć w przeglądarce
) async {
  // null safety
  name = name ?? '';
  gender = gender ?? '';
  age = age ??
      0; // Zmieniono na 0, ponieważ nie można przekonwertować pustego ciągu na int
  origin = origin ?? '';
  profession = profession ?? '';
  socialClass = socialClass ?? '';
  richness = richness ?? '';
  description = description ?? '';

  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('Karta Postaci',
                style:
                    pw.TextStyle(fontSize: 30, fontWeight: pw.FontWeight.bold)),
            pw.Divider(),
            pw.Text('Imie: $name', style: pw.TextStyle(fontSize: 20)),
            pw.Text('Plec: $gender', style: pw.TextStyle(fontSize: 20)),
            pw.Text('Wiek: ${age.toString()}',
                style: pw.TextStyle(fontSize: 20)),
            pw.Text('Pochodzenie: $origin', style: pw.TextStyle(fontSize: 20)),
            pw.Text('Zawod: $profession', style: pw.TextStyle(fontSize: 20)),
            pw.Text('Klasa Spoleczna: $socialClass',
                style: pw.TextStyle(fontSize: 20)),
            pw.Text('Zamoznosc: $richness', style: pw.TextStyle(fontSize: 20)),
            pw.Text('Opis postaci: $description',
                style: pw.TextStyle(fontSize: 10)),
          ],
        );
      },
    ),
  );

  // Wyświetl plik PDF
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
