import 'package:flutter/material.dart';
import 'package:flutter_project/property_mobile_app_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent)
        ),
        
        home: const PropertyMobileAppDemo());
  }
}
