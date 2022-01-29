import 'dart:ui';

import 'package:dclick_test/logic/models/foot_size.dart';

class Product {
  final String model;
  final String colorShoe;
  final String price;
  final String oldPrice;
  final String description;
  // final List<Image> images;
  final List<String> images;
  final List<FootSize> sizeAvailable;
  bool lowered;

  Product({
    required this.model,
    required this.colorShoe,
    required this.price,
    required this.oldPrice,
    required this.description,
    required this.images,
    required this.sizeAvailable,
    required this.lowered,
  });
}
