# <img src="https://img.icons8.com/color/48/000000/document.png"/>![image](https://github.com/HutoonAlomran/ADF_DemoApp/assets/105802149/a08e9946-4f73-462a-803f-8252ec18a9a0) ADF Demo App

This is a simple Flutter demo app created for learning Flutter basics. The app has four screens: the Home screen, the User's Manual screen, the About Us screen, and the Contact Us screen.

## Home Screen

The home screen displays the logo of the Agriculture Development Fund and three buttons: "دليل المستخدم", "من نحن", "اتصل بنا". When the user taps the "دليل المستخدم" button, they are taken to the PDF screen. When the user taps the "من نحن" button, they are taken to the About Us screen. When the user taps the "اتصل بنا" button, they are taken to the Contact Us screen.

## PDF Screen

The PDF screen displays the PDF document "Eservices_UM2022.pdf" from the website "https://adf.gov.sa". The PDF is loaded using the `flutter_cached_pdfview` package, which caches the document for faster loading in the future.

## About Us Screen

The About Us screen provides information about the Agriculture Development Fund, including its history and mission.

## Contact Us Screen

The Contact Us screen allows users to get in touch with the Agriculture Development Fund. It provides a web view of the contact page from the official website of the Agriculture Development Fund (https://adf.gov.sa/ar/Help/ContactUs/Pages/default.aspx). Users can fill out a form with their contact details and submit inquiries, feedback, or support requests.

## How to Use

To use this app, clone the repository and run it using Flutter. The app requires an active internet connection to load the PDF document and the contact page.

## Dependencies

This app requires the following dependencies:

- flutter_cached_pdfview: ^2.0.0
-  webview_flutter: ^4.2.2
- flutter: sdk: flutter"

## Tools
<img src="https://img.icons8.com/fluent/48/000000/flutter.png"/>
