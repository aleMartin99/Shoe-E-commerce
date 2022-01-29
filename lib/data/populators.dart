import 'package:dclick_test/data/models/foot_size.dart';
import 'package:dclick_test/data/models/product.dart';
import 'package:flutter/material.dart';

List<Product> products = [
  Product(
    model: 'Jordan',
    description:
        "The Nike Jordan Men's Shoe is inspired by the 'Sir Charles' original, the Nike Air Force features a visible Air Max unit that is near twice the size as the 1992 classic.",
    price: '210',
    colorShoe: ',,Red"',
    backgroundColor: Colors.red.shade100,
    oldPrice: '299',
    // images: [ Image.asset(
    //             'assets/air_max_270.png',
    //             fit: BoxFit.cover,
    //           ),
    images: [
      'assets/jordan_1.png',
      'assets/jordan_1.png',
      'assets/jordan_1.png',
    ],
    sizeAvailable: [
      FootSize(region: 'US', size: '6'),
      FootSize(region: 'US', size: '7'),
      FootSize(region: 'US', size: '9'),
      FootSize(region: 'US', size: '9.5'),
      FootSize(region: 'US', size: '10'),
    ],
  ),
  Product(
    model: 'AIR FORCE HIGH',
    description:
        "The Nike Air Force  Men's Shoe is inspired by the 'Sir Charles' original, the Nike Air Force features a visible Air Max unit that is near twice the size as the 1992 classic.",
    price: '152',
    colorShoe: ',,Gold"',
    backgroundColor: Colors.amber.shade100,
    oldPrice: '299',
    // images: [ Image.asset(
    //             'assets/air_max_270.png',
    //             fit: BoxFit.cover,
    //           ),
    images: [
      'assets/nike_air_force_1_high.png',
      'assets/nike_air_force_1_high.png',
      'assets/nike_air_force_1_high.png',
    ],
    sizeAvailable: [
      FootSize(region: 'US', size: '6'),
      FootSize(region: 'US', size: '7'),
      FootSize(region: 'US', size: '9'),
      FootSize(region: 'US', size: '9.5'),
      FootSize(region: 'US', size: '10'),
    ],
  ),
  Product(
    model: 'AIR MAX 270',
    description:
        "The Nike Air Force 270 Men's Shoe is inspired by the 'Sir Charles' original, the Nike Air Force 270 features a visible Air Max unit that is near twice the size as the 1992 classic.",
    price: '198',
    colorShoe: ',,Black"',
    backgroundColor: Colors.grey.shade100,
    oldPrice: '382',
    // images: [ Image.asset(
    //             'assets/air_max_270.png',
    //             fit: BoxFit.cover,
    //           ),
    images: [
      'assets/air_max_270.png',
      'assets/air_max_270.png',
      'assets/air_max_270.png',
    ],
    sizeAvailable: [
      FootSize(region: 'US', size: '6'),
      FootSize(region: 'US', size: '7'),
      FootSize(region: 'US', size: '9'),
      FootSize(region: 'US', size: '9.5'),
      FootSize(region: 'US', size: '10'),
    ],
  ),
];
