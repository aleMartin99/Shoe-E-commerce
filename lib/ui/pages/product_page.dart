import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: FloatingActionButton(
                elevation: 2,
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
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: FloatingActionButton(
                elevation: 2,
                backgroundColor: Colors.black,

                // TODO(ale): method

                onPressed: () {
                  setState(() {
                    showMaterialModalBottomSheet<dynamic>(
                      //elevation: 10,
                      context: context,
                      barrierColor: Colors.black54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      builder: (context) => Column(
                        mainAxisSize: MainAxisSize.min,
                        // shrinkWrap: true,
                        //primary: false,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 200,
                                height: 200,
                                child: Image.asset(
                                  'assets/air_max_270.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 18),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'AIR MAX 270 \n,,GOLD"',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          letterSpacing: 2,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54,
                                        ),
                                        maxLines: 2,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        r'$199',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                IcoFontIcons.footPrint,
                                color: Colors.black54,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'SELECT SIZE',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: GridView.count(
                              childAspectRatio: 1.8,
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              primary: false,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              crossAxisCount: 4,
                              children: <Widget>[
                                OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    padding: MaterialStateProperty.all(
                                      EdgeInsets.zero,
                                    ),
                                  ),
                                  onPressed: null,
                                  child: const Text(
                                    'US 6',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                OutlinedButton(
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                        vertical: 13,
                                        horizontal: 19,
                                      ),
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  onPressed: null,
                                  child: const Text(
                                    'US 8',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                OutlinedButton(
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                        vertical: 13,
                                        // horizontal: 19,
                                      ),
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  onPressed: null,
                                  child: const Text(
                                    'US 9',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                OutlinedButton(
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                        vertical: 13,
                                        //  horizontal: 19,
                                      ),
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  onPressed: null,
                                  child: const Text(
                                    'US 9.5',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                OutlinedButton(
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                        vertical: 13,
                                        //  horizontal: 19,
                                      ),
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  onPressed: null,
                                  child: const Text(
                                    'US 10',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                    vertical: 13, horizontal: 13,
                                    //  horizontal: 19,
                                  ),
                                ),
                                shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                ),
                              ),
                              onPressed: null,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                child: Row(
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(right: 12),
                                      child: Icon(
                                        Icons.shopping_basket_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'ADD TO CART',
                                      style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      ),
                    );
                  });
                },
                heroTag: null,
                child: const Icon(
                  Icons.shopping_basket_outlined,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        // foregroundColor: Colors.red,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white10,

        // toolbarHeight: 100,
        centerTitle: true,

        title: Image.asset(
          'assets/png-transparent-jumpman-nike-free-swoosh-nike-angle-triangle-logo-thumbnail.png',
          height: 50,
          width: 60,
        ),
      ),
      body: ListView(
        physics: const ScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          ImageSlideshow(
            // width: double.infinity,
            height: 400,
            indicatorColor: Colors.black,
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
          ),
          const SizedBox(
            height: 24,
          ),
          ListTile(
            title: const Text(
              'AIR MAX 270',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 27,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
              maxLines: 2,
            ),
            subtitle: const Text(
              ',,GOLD"',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
              maxLines: 2,
            ),
            trailing: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    r'$349',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    r'$199',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'AVAILABLE SIZES',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                'US 6',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'US 8',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'US 9',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'US 9.5',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'US 10',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 48,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'DESCRIPTION',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "The Nike Air Force 270 Men's Shoe is inspired by the 'Sir Charles' original, the Nike Air Force 270 features a visible Air Max unit that is near twice the size as the 1992 classic.",
              style: TextStyle(
                fontSize: 15,
                // fontWeight: FontWeight.w500,

                color: Colors.black54,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
