import 'package:flutter/material.dart';

class FootSizeButton extends StatefulWidget {
  const FootSizeButton({Key? key}) : super(key: key);

  @override
  State<FootSizeButton> createState() => _FootSizeButtonState();
}

class _FootSizeButtonState extends State<FootSizeButton> {
  @override
  Widget build(BuildContext context) {
    //TODO(ale): HACER DINAMICO
    return OutlinedButton(
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
    );
  }
}
