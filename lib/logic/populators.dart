import 'package:dclick_test/logic/models/foot_size.dart';
import 'package:dclick_test/logic/models/product.dart';

List<Product> products = [
  Product(
    model: 'AIR MAX 270',
    description:
        "The Nike Air Force 270 Men's Shoe is inspired by the 'Sir Charles' original, the Nike Air Force 270 features a visible Air Max unit that is near twice the size as the 1992 classic.",
    price: '198',
    colorShoe: ',,Black"',
    lowered: true,
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
      FootSize(region: 'US', size: 6),
      FootSize(region: 'US', size: 7),
      FootSize(region: 'US', size: 9),
      FootSize(region: 'US', size: 9.5),
      FootSize(region: 'US', size: 10),
    ],
  )
];
