//import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/pages/home_page.dart';
import 'ui/pages/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // TODO change to BLOC

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dclick Soluciones Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const MyHomePage()),
        GetPage(
          curve: Curves.bounceOut,
          name: '/product_page',
          page: () => const ProductPage(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 500),
        ),
      ],
    );
  }
}
