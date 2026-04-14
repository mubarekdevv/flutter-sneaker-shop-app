import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100], 
        borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            //shoe pic
            Image.asset('assets/images/airnike.png')

            //description

            //price + details

            //bottom to add cart
          ],
        ),
    );
  }
}