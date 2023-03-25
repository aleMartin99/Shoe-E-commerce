import 'package:flutter/material.dart';
import 'package:shoe_shop/data/models/product.dart';
import 'package:shoe_shop/data/populators.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<Product> x = products;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //*Bottom Navigation Bar
    final bottomNavBar = BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: Colors.black,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black54,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black54,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_basket_outlined,
            color: Colors.black54,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.jpg'),
            radius: 25,
          ),
          label: '',
        ),
      ],
    );
    //*App Bar
    final appBar = AppBar(
      automaticallyImplyLeading: false,
      title: Image.asset(
        'assets/logo.png',
        height: 60,
        width: 70,
      ),
    );

    //*Making the footsizes dynamic
    final xProducts = <Widget>[];
    for (var i = 0; i < widget.x.length; i++) {
      xProducts.add(
        ProductItem(
          product: widget.x[i],
        ),
      );
    }

    return Scaffold(
      appBar: appBar,
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: xProducts,
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
