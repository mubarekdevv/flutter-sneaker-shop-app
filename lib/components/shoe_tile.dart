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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //shoe pic
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)),

            //description
            Text(shoe.description, style: TextStyle(
              color: Colors.grey[600]
            ),),

            //price + details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(shoe.name, style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),

                    //price
                    Text("\$" + shoe.price)
                  ],
                ),

                //plus button
                
              ],
            ),


            //bottom to add cart
          ],
        ),
    );
  }
}