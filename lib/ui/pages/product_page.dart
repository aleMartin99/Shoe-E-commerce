import 'package:dclick_test/logic/models/product.dart';
import 'package:dclick_test/ui/widgets/add_to_cart_button.dart';
import 'package:dclick_test/ui/widgets/foot_size_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key, required this.product}) : super(key: key);

  Product product;

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
                      //TODO ver propiedad, Arreglar redondeado de abajo
                      isDismissible: true,
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
                                //TODO(ale): cambiar resto de outlined buttons x footsizebutton
                                const FootSizeButton(),

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
                            child: AddToCartButton(),
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

        // elevation: 0,
        leading: IconButton(
          splashColor: Colors.transparent,
          onPressed: Get.back,
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        automaticallyImplyLeading: false,
        //  backgroundColor: Colors.white10,
        // centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          // semanticsLabel: 'nike logo',
          height: 60,
          width: 70,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          ImageSlideshow(
            // width: double.infinity,
            height: 400,
            indicatorColor: Colors.black,
            children: [
              //TODO la lista dinamica, arreglar en product el listado d imagenes
              Image.asset(
                widget.product.images[0],
                fit: BoxFit.cover,
              ),
              Image.asset(
                widget.product.images[1],
                fit: BoxFit.cover,
              ),
              Image.asset(
                widget.product.images[2],
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          ListTile(
            title: Text(
              widget.product.model,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 27,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
              maxLines: 2,
            ),
            subtitle: Text(
              widget.product.colorShoe,
              textAlign: TextAlign.start,
              style: const TextStyle(
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
                children: [
                  Text(
                    '\$${widget.product.oldPrice}',
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    '\$${widget.product.price}',
                    style: const TextStyle(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.product.description,
              style: const TextStyle(
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
