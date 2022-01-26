import 'package:dclick_test/ui/pages/home_page.dart';
import 'package:dclick_test/ui/pages/product_page.dart';
//import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // TODO(ale): change to BLOC

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dclick Soluciones Test',
      theme: ThemeData(
        //appBarTheme: const AppBarTheme(color: Colors.red),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage<dynamic>(name: '/home', page: () => const MyHomePage()),
        GetPage<dynamic>(
          curve: const Interval(
            0.200,
            0.400,
            curve: Curves.elasticOut,
          ),
          name: '/product_page',
          page: () => const ProductPage(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 2500),
        ),
      ],
    );
  }
}
