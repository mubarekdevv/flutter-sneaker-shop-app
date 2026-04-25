import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  void Function()? onTap;
  Shoe shoe;
  CartItem({
    super.key, 
    required this.shoe,
    required this.onTap
    });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        
      ),
      
    );
  }
}