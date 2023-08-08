import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'View PDF',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'صندوق التنمية الزراعية'),
      routes: {
        PDFScreen.routeName: (context) => const PDFScreen(),
        AboutUs.routeName: (context) => const AboutUs(),
      },
    );
  }
}

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
                  Navigator.pushNamed(context, PDFScreen.routeName);
                },
                child: Text('دليل المستخدم'),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AboutUs.routeName);
                },
                child: Text('من نحن'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// PDF Page
class PDFScreen extends StatelessWidget {
  static const routeName = '/pdf';

  const PDFScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('دليل المستخدم'),
      ),
      body: Center(
        child: PDF().cachedFromUrl('https://adf.gov.sa/ar/ServicesCatalog/Eservices_UserManaul/Documents/Eservices_UM2022.pdf',),
      ),
    );
  }
}

// AboutUs Page
class AboutUs extends StatelessWidget {
  static const routeName = '/AboutUs';

  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('من نحن'),
      ),
      body: const Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'من نحن',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '''تأسس البنك الزراعي العربي السعودي بموجب المرسوم الملكي رقم (58) وتاريخ 3/12/1382هـ ليكون مؤسسة ائتمانية حكومية متخصصة في تمويل مختلف مجالات النشاط الزراعي في جميع مناطق المملكة، للمساعدة في تنمية القطاع الزراعي ورفع كفاءته الإنتاجية باستخدام أفضل الأساليب العلمية والتقنية الحديثة، وذلك عن طريق تقديم قروض ميسرة بدون فوائد للمزارعين لتأمين ما يلزم هذا النشاط مثل المكائن والمضخات والآلات الزراعية ومعدات تربية الأبقار والدواجن والأغنام ومعدات تربية النحل والأسماك وغيرها.
              وفي 29 محرم 1430 هـ وافق مجلس الوزراء، بعد النظر في قرار مجلس الشورى رقم ( 106/71 ) وتاريخ 4/2/1429هـ على نظام صندوق التنمية الزراعية بالصيغة المرفقة بالقرار. ومن أبرز ملامح النظام : يحل هذا النظام محل ( نظام البنك الزراعي العربي السعودي )، ورأس مال الصندوق 20 مليار ريال وتجوز زيادة رأس المال بقرار من مجلس الوزراء، مع مراعاة المحافظة على المياه 
              وترشيد استخداماتها الزراعية والمحافظة على البيئة، ويهدف الصندوق إلى دعم التنمية الزراعية واستدامتها عن طريق تقديم القروض الميسرة والتسهيلات الائتمانية اللازمة.''',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}