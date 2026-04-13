import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(bottom: 20),
      child: GNav(
        color: Colors.grey[400], //for the unselected options
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: [
        GButton(
          
          icon: Icons.home,
          iconActiveColor: Colors.black,
          text: 'SHOP',
          textColor: Colors.black,
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'CART',
            iconActiveColor: Colors.black,
            textColor: Colors.black,
            )
      ]),
    );
  }
}