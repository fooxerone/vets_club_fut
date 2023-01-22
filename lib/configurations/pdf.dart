import 'dart:io';

import 'package:open_file_safe/open_file_safe.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

final pdf = pw.Document();

createPrescription({
  required String ownerName,
  required String address,
  required String phone,
  required String animalName,
  required String species,
})async{
  pdf.addPage(pw.MultiPage(
    pageFormat: PdfPageFormat.a4,
    build: (context) {
      return [
        pw.Padding(
            padding: pw.EdgeInsets.all(20),
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Divider(color: PdfColors.black, height: 2),
                  pw.Text('Owner Name: $ownerName'),
                  pw.SizedBox(height: 10),
                  pw.Text('Address: $address'),
                  pw.SizedBox(height: 10),
                  pw.Text('Telephone No.: $phone'),
                  pw.SizedBox(height: 10),
                  pw.Text('Animal Name: $animalName'),
                  pw.SizedBox(height: 10),
                  pw.Text('Species: $species'),
                  pw.SizedBox(height: 10)
                ]))
      ];
    },
  ));
  final file = File('/storage/emulated/0/Vets_Club_Notes/Prescriptions/$animalName.pdf');
  await file.writeAsBytes(await pdf.save());
  await OpenFile.open(file.path);
}
