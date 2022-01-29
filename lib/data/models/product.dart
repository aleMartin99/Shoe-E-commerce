import 'dart:ui';

import 'package:dclick_test/data/models/foot_size.dart';

// la vida
class Product {
  Product({
    required this.model,
    required this.colorShoe,
    required this.price,
    required this.oldPrice,
    required this.description,
    required this.backgroundColor,
    required this.images,
    required this.sizeAvailable,
  });
  final String model;
  final String colorShoe;
  final String price;
  final String oldPrice;
  final String description;
  final Color backgroundColor;
  final List<String> images;
  final List<FootSize> sizeAvailable;
}
