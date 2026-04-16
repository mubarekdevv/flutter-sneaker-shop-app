import 'package:ecommerce_app_ui/components/bottom_nav_bar.dart';
import 'package:ecommerce_app_ui/pages/cart_page.dart';
import 'package:ecommerce_app_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar or we need to have an intiger to keep track of the selected index
  int currentSelectedIndex = 0;
  //also we need a method to update the selected index, when the user taps on the bottm bar and zero for the home and 1 for the cart it just givs it to the method and the method assigns it to the selectedindex so this means the method updates our selected index
  updateCurrentSelectedIndex(index){
    setState(() {
  currentSelectedIndex = index;
});
}

  //pages to display
  final List<Widget> pages = [
    //shop page
    ShopPage(),
    //cart page
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        //the ff is to navigating the bottom bar
        onTabChangeu: (index) => updateCurrentSelectedIndex(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          }
        ),
        
      ),
      body: pages[currentSelectedIndex],
      
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  
                  child: Image.asset(
                  'assets/images/nikelogo.png',
                  color: Colors.white,)
                  ),
                  Divider(
                    color: Colors.grey[900],
                  ),
                ListTile(
                  onTap: () {
                    updateCurrentSelectedIndex(0); //to go to shop page since it's at o index
                    Navigator.pop(context); // to close the drawer when home is tapped
                  },
                  leading: Icon(Icons.home, color: Colors.white,),
                  title: Text('H O M E', style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    'A B O U T',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                'L O G O U T',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}