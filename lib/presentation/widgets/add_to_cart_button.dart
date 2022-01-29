import 'package:flutter/material.dart';

class AddToCartButton extends StatefulWidget {
  AddToCartButton({
    Key? key,
    required this.activated,
  }) : super(
          key: key,
        );

  bool activated;
  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: widget.activated
            ? MaterialStateProperty.all(Colors.black)
            : MaterialStateProperty.all(Colors.black12),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 13,
            horizontal: 13,
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
      onPressed: () {
        setState(() {
          widget.activated = !widget.activated;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 2,
        ),
        child: Row(
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
