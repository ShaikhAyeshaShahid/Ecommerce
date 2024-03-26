import 'package:ecommerce/IntroPage.dart';
import 'package:ecommerce/Login.dart';
import 'package:ecommerce/TermsConditions.dart';
import 'package:flutter/material.dart';

class Buttom_Navigation extends StatelessWidget {
  Buttom_Navigation({super.key});

  int Current_index = 0;

  final List<Widget> _pages = [IntroPage(), Login(), TermsConditions()];

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            height: size.height * 0.03,
            width: size.width * 0.06,
            child: Icon(Icons.home),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 28.0,
            width: 28.0,
            child: Icon(Icons.search),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 28.0,
            width: 28.0,
            child: Icon(Icons.favorite),
          ),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 28.0,
            width: 28.0,
            child: Icon(Icons.shopping_cart),
          ),
          label: 'Cart',
        ),
        //   label: 'Profile',
        // ),
      ],
    );
  }
}
