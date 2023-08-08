# PDF Viewer App

This is a simple Flutter app that allows users to view a PDF document. The app has two screens: the home screen and the PDF screen. 

## Home Screen

The home screen displays the logo of Agriculture Development Fund and two buttons: "دليل المستخدم" and "من نحن". When the user taps the "دليل المستخدم" button, they are taken to the PDF screen. When the user taps the "من نحن" button, they are taken to the About Us screen.

## PDF Screen

The PDF screen displays the PDF document "Eservices_UM2022.pdf" from the website "https://adf.gov.sa". The PDF is loaded using the `flutter_cached_pdfview` package, which caches the document for faster loading in the future.

## About Us Screen

The About Us screen provides information about the Agriculture Development Fund, including its history and mission. 

## How to Use

To use this app, clone the repository and run it using Flutter. The app requires an active internet connection to load the PDF document.

## Dependencies

This app requires the following dependencies:

- flutter_cached_pdfview: ^2.0.0
- flutter: sdk: flutter

## Screenshots

![Home Screen](screenshots/home.png)

![PDF Screen](screenshots/PDFscreen.png)

![About Us Screen](screenshots/about_us.png)
