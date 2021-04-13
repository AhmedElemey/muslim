// import 'package:flutter/material.dart';
// import 'package:muslim/screens/Ad3eya_screen.dart';
// import 'package:muslim/screens/a7ades_screen.dart';
// import 'package:muslim/screens/azkar_screen.dart';
// import 'package:muslim/screens/home_screen.dart';
// import 'package:muslim/screens/stores_screen.dart';
// import 'package:muslim/screens/tasbee7_screen.dart';
//
// Future main() async {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   static final String title = 'Muslim';
//
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: title,
//         theme: ThemeData(primarySwatch: Colors.red),
//         home: HomeScreen(),
//         routes: {
//           Ad3eyaScreen.routeName: (ctx) => Ad3eyaScreen(),
//           A7adesScreen.routeName: (ctx) => A7adesScreen(),
//           AzkarScreen.routeName: (ctx) => AzkarScreen(),
//           StoresScreen.routeName: (ctx) => StoresScreen(),
//           Tasbee7Screen.routeName: (ctx) => Tasbee7Screen(),
//         },
//       );
// }

import 'dart:io';

// import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muslim/screens/home_screen.dart';
import 'package:muslim/view_model/list_view_model.dart';
import 'package:provider/provider.dart';
//hamada

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ListViewModel()),
      ],
      child: MaterialApp(
        // builder: DevicePreview.appBuilder,
        theme: ThemeData(
          primaryColor: Color(0xff294794),
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        routes: {},
      ),
    ),
  );
}
