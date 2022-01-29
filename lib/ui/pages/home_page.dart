import 'package:dclick_test/logic/models/foot_size.dart';
import 'package:dclick_test/logic/models/product.dart';
import 'package:dclick_test/logic/populators.dart';
import 'package:dclick_test/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  List<Product> x = products;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/logo.png',
          height: 60,
          width: 70,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          ProductItem(
            product: widget.x[0],
          ),
          ProductItem(product: widget.x[0]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        // currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        //selectedIndex: 0,
        // showElevation: true, // use this to remove appBar's elevation
        //onItemSelected: (value) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
              size: 30,
            ),
            label: '',
            // activeColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black54,
              size: 30,
            ),
            label: '',
            //activeColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black54,
              size: 30,
            ),
            label: '',
            // activeColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket_outlined,
              color: Colors.black54,
              size: 30,
            ),
            label: '',
            // activeColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.jpg'),
              radius: 25,
            ),
            label: '',
            // activeColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
