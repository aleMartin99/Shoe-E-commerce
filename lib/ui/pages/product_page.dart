import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
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
                onPressed: () {
                  setState(() {
                    showMaterialModalBottomSheet<dynamic>(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      builder: (context) => ListView(
                        shrinkWrap: true,
                        primary: false,
                        children: [
                          SizedBox(
                            height: 450,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Image.asset(
                                    'assets/air_max_270.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Expanded(
                                  child: ListTile(
                                    title: Text(
                                      'AIR MAX 270 \n,,GOLD"',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        //fontSize: 27,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2,
                                      ),
                                      maxLines: 2,
                                    ),
                                    subtitle: Text(
                                      r'$199',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                    isThreeLine: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
                },
                //heroTag: null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: FloatingActionButton(
                elevation: 2,
                backgroundColor: Colors.black,

                // TODO(ale): method

                onPressed: () => 0,
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
