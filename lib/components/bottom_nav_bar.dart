import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {

  void Function(int)? onTabChangeu;
  MyBottomNavBar(
    {super.key,
    required this.onTabChangeu
    });

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

/*The job of the ff onTabChange property is to pass the selected tab number (0 for Shop, 1 for Cart) from the custom navigation bar back up to the HomePage.
🔍 Breakdown
The Outer onTabChange: This belongs to the Google Nav Bar (GNav) package. It triggers automatically and gives you a value (the index number of the tab clicked).
The Inner onTabChange!(value): This is the custom function you created at the top of your MyBottomNavBar class.
The Exclamation Mark (!): This tells Flutter that you promise this function is not null and is safe to run.
In short, it acts like a bridge. It catches the click from the Google Nav Bar package and throws it up to your HomePage so it can swap the body display.*/
        
        onTabChange: (value) {
          onTabChangeu!(value);
        },
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