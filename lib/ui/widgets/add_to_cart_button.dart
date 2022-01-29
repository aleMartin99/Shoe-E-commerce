import 'package:flutter/material.dart';

class AddToCartButton extends StatefulWidget {
  AddToCartButton({Key? key}) : super(key: key);

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 13, horizontal: 13,
            //  horizontal: 19,
          ),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.elliptical(30, 30),
            ),
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
    );
  }
}
