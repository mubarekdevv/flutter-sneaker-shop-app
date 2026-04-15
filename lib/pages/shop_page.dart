import 'package:ecommerce_app_ui/components/shoe_tile.dart';
import 'package:ecommerce_app_ui/models/cart.dart';
import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoetocart method, so we've created it we just need to access it using our provider
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    //one good thing from experience is we should let the user know something happen so if we added it to the Cart let's just create a show dialoge, so alert the user, shoe successfully added
    showDialog(
      context: context, 
      builder: (context) {
        return
        AlertDialog(
          title: Text('Successfully added!'),
          content: Text('Check your cart..'),
        );
      },);
  }

  @override
  Widget build(BuildContext context) {
    //so since it is wrapped with Consumer we can consume the data so if we look at this "value" in "(context, value, child)" we can say coming down to the listview builder...
    return Consumer<Cart>(builder: (context, value, child) {
      return
      Column(
      children: [
        // search bar
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10)),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search', style: TextStyle(color: Colors.grey),),
              Icon(Icons.search, color: Colors.grey,)
            ],
          ),
          margin: EdgeInsets.only(right: 20, left: 20),
          
        ),
         //message
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 25),
           child: Text('everyone flies.. some fly longer than others', style: TextStyle(color: Colors.grey[600]),),
         ),

          //hot pics of shoes
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hot Pics 🔥', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  ),),
                Text('See all', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),)
              ],
            ),
          ),
          const SizedBox(height: 10),

          // list of shoes for sale
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              //create  shoe
              //right here we kind of manually input it in so we have to do instead of this commentedbelow

              // Shoe shoe = Shoe(
              //   name: 'Air Nike',
              //   price: '240', 
              //   imagePath: 'assets/images/image.png', 
              //   description: 'cool shoe');
              //get a shoe from shop list. the index is going from zero to the item count that was specified
              Shoe shoe = value.getShoeList()[index];
              // return shoe
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
                );
            },),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
            child: Divider(color: Colors.grey[300],),
          )
          // SizedBox(height: 50,) both works

      ],
    );
    },);
  }
}