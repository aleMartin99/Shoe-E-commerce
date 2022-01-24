//import 'package:carousel_slider/carousel_slider.dart';
import 'dart:ui';

import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.only(left: 36.0),
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {},
              //heroTag: null,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.black,
            child: const Icon(
              Icons.shopping_basket_outlined,
              color: Colors.white,
            ),

            //TODO method

            onPressed: () => 0,
            heroTag: null,
          )
        ]),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios_new)),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          // toolbarHeight: 100,
          centerTitle: true,
          title: FittedBox(
            fit: BoxFit.cover,
            //clipBehavior: Clip.hardEdge,
            child: Image.asset(
              'assets/png-transparent-jumpman-nike-free-swoosh-nike-angle-triangle-logo-thumbnail.png',
              height: 50,
              width: 60,
            ),
          ),
        ),
        body: ListView(
          physics: const ScrollPhysics(),
          children: [
            const SizedBox(
              height: 10,
            ),
            ImageSlideshow(
              children: [
                Image.asset(
                  'assets/nike.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/air_max_270.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/nike-rojos.jpg',
                  fit: BoxFit.cover,
                )
              ],
              width: double.infinity,
              height: 350,
              indicatorColor: Colors.black,
            ),
            const SizedBox(
              height: 24,
            ),
            ListTile(
              title: const Text(
                'AIR MAX 270,, GOLD"  ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3),
                maxLines: 2,
              ),
              trailing: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      '200',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                    Text(
                      '200',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'AVAILABLE SIZES',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('US 6',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text('US 8',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text('US 9',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text('US 9.5',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text('US 10',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
        //bottomNavigationBar: ,
        //body:
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
