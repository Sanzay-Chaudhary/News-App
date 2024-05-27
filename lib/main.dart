import 'package:flutter/material.dart';
import 'package:news_app/features/home/page/home_page.dart';
import 'package:news_app/features/detail/page/detail_page.dart';
import 'package:news_app/features/home/page/login_page.dart';
import 'package:news_app/features/enviroment/page/enviroment_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        "/detail_page": (BuildContext context) => const DetailPage(),
        "/home_page": (BuildContext context) => const MyHomePage(),
        "/enviroment_page": (BuildContext context) => const EnviromentPage(),
      },
    );
  }
}
