import 'package:dclick_test/data/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Card(
        color: widget.product.backgroundColor,
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: InkWell(
          onTap: () => Get.toNamed<dynamic>(
            '/product_page',
            arguments: widget.product,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  widget.product.images[0],
                  fit: BoxFit.cover,
                  // 'assets/nike_fondo_negro.jpg',
                ),
              ),
              Text(
                '${widget.product.model}'
                '${widget.product.colorShoe}',
                textAlign: TextAlign.right,
                style: const TextStyle(
                  letterSpacing: 2,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
                maxLines: 2,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.black54,
                      size: 30,
                    ),
                    Column(
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

                        //r string

                        Text(
                          '\$${widget.product.price}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.shopping_basket_outlined,
                      color: Colors.black54,
                      size: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
