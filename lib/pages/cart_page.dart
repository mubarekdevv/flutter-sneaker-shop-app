import 'package:ecommerce_app_ui/components/cart_item.dart';
import 'package:ecommerce_app_ui/models/cart.dart';

import '../models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Text('My Cart', style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          

          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
            //get individual shoe
            Shoe indiviualShoe = value.getUserCart()[index];
            //return the cart item
            return CartItem(shoe: indiviualShoe,onTap: () => value.removeItemFromCart(indiviualShoe),);
          },))
        ],
      ),
    ),);
  }
}