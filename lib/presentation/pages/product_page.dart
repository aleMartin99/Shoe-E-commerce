import 'package:dclick_test/data/models/product.dart';
import 'package:dclick_test/presentation/widgets/add_to_cart_button.dart';
import 'package:dclick_test/presentation/widgets/foot_size_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProductPage extends StatefulWidget {
  ProductPage({
    Key? key,
  }) : super(key: key) {
    product = Get.arguments as Product;
  }

  late final Product product;
  final bool activated = false;
  @override
  ProductPageState createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  //*Bottom Sheet
  void _showBottomSheet() {
    //*Making the footsizesbuttons dynamic
    final footSizesButtons = <Widget>[];
    for (var i = 0; i < widget.product.sizeAvailable.length; i++) {
      footSizesButtons.add(
        FootSizeButton(
          footSize: widget.product.sizeAvailable[i],
          activated: widget.activated,
        ),
      );
    }
    setState(() {
      showMaterialModalBottomSheet<dynamic>(
        isDismissible: true,
        context: context,
        barrierColor: Colors.black54,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    widget.product.images[0],
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${widget.product.model}\n'
                          '${widget.product.colorShoe}',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            letterSpacing: 2,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54,
                          ),
                          maxLines: 2,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          '\$${widget.product.price}',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
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
                children: footSizesButtons,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: AddToCartButton(
                activated: widget.activated,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //*Making the images dynamic
    final imagesWidg = <Widget>[];
    for (var i = 0; i < widget.product.images.length; i++) {
      imagesWidg.add(
        Image.asset(
          widget.product.images[i],
          fit: BoxFit.cover,
        ),
      );
    }
    //*Making the footsizes dynamic
    final footSizesWidg = <Widget>[];
    for (var i = 0; i < widget.product.sizeAvailable.length; i++) {
      footSizesWidg.add(
        Text(
          '${widget.product.sizeAvailable[i].region}'
          ' ${widget.product.sizeAvailable[i].size}',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
    //*Floating Actions Buttons
    final floatingActionButtons = Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 36),
            child: FloatingActionButton(
              elevation: 2,
              // heroTag: null,
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
              onPressed: _showBottomSheet,
              heroTag: null,
              child: const Icon(
                Icons.shopping_basket_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
//*App Bar
    final appBar = AppBar(
      leading: IconButton(
        splashColor: Colors.transparent,
        onPressed: Get.back,
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      automaticallyImplyLeading: false,
      title: Image.asset(
        'assets/logo.png',
        height: 60,
        width: 70,
      ),
    );
//* Product Info. Model and price
    final productInfo = ListTile(
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
    );

    return Scaffold(
      floatingActionButton: floatingActionButtons,
      appBar: appBar,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          //* Lo relacionado a las imagenes del producto
          Stack(
            children: [
              Container(
                //* Aquí iría una imagen de fondo que no se asignó en el test
                color: widget.product.backgroundColor,
                height: 400,
                width: double.infinity,
              ),
              ImageSlideshow(
                height: 400,
                indicatorColor: Colors.black,
                children: imagesWidg,
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          productInfo,
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
            children: footSizesWidg,
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
