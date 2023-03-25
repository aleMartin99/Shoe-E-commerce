import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shoe_shop/presentation/pages/home_page.dart';
import 'package:shoe_shop/presentation/pages/product_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
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
        GetPage<dynamic>(name: '/home', page: MyHomePage.new),
        GetPage<dynamic>(
          curve: Curves.slowMiddle,
          name: '/product_page',
          page: ProductPage.new,
          transition: Transition.circularReveal,
          transitionDuration: const Duration(milliseconds: 1300),
        ),
      ],
    );
  }
}
