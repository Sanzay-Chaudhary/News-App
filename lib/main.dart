import 'package:flutter/material.dart';
import 'package:news_app/features/bookmark/bookmark_page.dart';
import 'package:news_app/features/home/page/home_page.dart';
import 'package:news_app/features/detail/page/detail_page.dart';
import 'package:news_app/features/enviroment/page/enviroment_page.dart';
import 'package:news_app/features/product/product_page.dart';
import 'package:news_app/features/product/service/product_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 65, 52, 87)),
          useMaterial3: true,
        ),
        home: const ProductPage(),
        routes: {
          "/detail_page": (BuildContext context) => const DetailPage(),
          "/home_page": (BuildContext context) => const MyHomePage(),
          "/enviroment_page": (BuildContext context) => const EnviromentPage(),
          "/bookmark_page": (BuildContext context) => const BookMarkPage(),
        },
      ),
    );
  }
}
