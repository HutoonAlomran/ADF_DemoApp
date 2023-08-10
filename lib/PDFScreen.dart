import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class PDFScreen extends StatelessWidget {
  const PDFScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('دليل المستخدم'),
      ),
      body: Center(
        child: PDF().cachedFromUrl(
          'https://adf.gov.sa/ar/ServicesCatalog/Eservices_UserManaul/Documents/Eservices_UM2022.pdf',
        ),
      ),
    );
  }
}