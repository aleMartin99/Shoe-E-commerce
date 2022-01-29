import 'package:dclick_test/logic/models/foot_size.dart';
import 'package:dclick_test/logic/models/product.dart';
import 'package:dclick_test/logic/populators.dart';
import 'package:dclick_test/ui/pages/home_page.dart';
import 'package:dclick_test/ui/pages/product_page.dart';
//import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<Product> products = [
    Product(
      model: 'AIR MAX 270',
      description:
          "The Nike Air Force 270 Men's Shoe is inspired by the 'Sir Charles' original, the Nike Air Force 270 features a visible Air Max unit that is near twice the size as the 1992 classic.",
      price: '198',
      colorShoe: ',,Black"',
      lowered: true,
      oldPrice: '382',
      // images: [ Image.asset(
      //             'assets/air_max_270.png',
      //             fit: BoxFit.cover,
      //           ),
      images: [
        'assets/air_max_270.png',
        'assets/air_max_270.png',
        'assets/air_max_270.png',
      ],
      sizeAvailable: [
        FootSize(region: 'US', size: 6),
        FootSize(region: 'US', size: 7),
        FootSize(region: 'US', size: 9),
        FootSize(region: 'US', size: 9.5),
        FootSize(region: 'US', size: 10),
      ],
    )
  ];

  // TODO(ale): change to BLOC

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dclick Soluciones Test',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white10,
          centerTitle: true,
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage<dynamic>(name: '/home', page: () => MyHomePage()),
        GetPage<dynamic>(
          curve: Curves.ease,
          name: '/product_page',
          page: () => ProductPage(product: products[0]),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 1000),
        ),
      ],
    );
  }
}
