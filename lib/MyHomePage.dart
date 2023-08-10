import 'package:flutter/material.dart';
import 'package:pdf_adf_2/PDFScreen.dart';
import 'package:pdf_adf_2/contactus.dart';
import 'package:pdf_adf_2/AboutUs.dart';

// Home Page
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ADF_logo.png',
              height: 150,
            ),
            SizedBox(height: 10),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PDFScreen()));
                },
                child: Text('دليل المستخدم'),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUs()));
                },
                child: Text('من نحن'),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
                child: Text('اتصل بنا'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}