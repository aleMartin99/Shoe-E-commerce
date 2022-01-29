import 'package:dclick_test/data/models/foot_size.dart';
import 'package:flutter/material.dart';

class FootSizeButton extends StatefulWidget {
  FootSizeButton({
    Key? key,
    required this.footSize,
    required this.activated,
  }) : super(key: key);
  final FootSize footSize;
  bool activated = false;
  @override
  State<FootSizeButton> createState() => _FootSizeButtonState();
}

class _FootSizeButtonState extends State<FootSizeButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: widget.activated
            ? MaterialStateProperty.all(Colors.black)
            : MaterialStateProperty.all(Colors.black12),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.zero,
        ),
      ),
      onPressed: () {
        setState(() {
          widget.activated = !widget.activated;
        });
      },
      child: Text(
        '${widget.footSize.region}'
        ' ${widget.footSize.size}',
        style: TextStyle(
          color: widget.activated ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
