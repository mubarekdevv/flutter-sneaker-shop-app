import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Black Leather', 
      price: '350', 
      imagePath: 'assets/images/blackleather.png', 
      description: 'The forward-thinking design of latest signature shoe.',
      ),
      Shoe(
        name: 'New Nike',
        price: '299', 
        imagePath: 'assets/images/newnikebrand.png', 
        description: 'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court'),
        Shoe(
        name: 'Two-Tone leather',
        price: '449',
        imagePath: 'assets/images/twotoneleather.png',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive'),
        Shoe(
        name: 'White Air',
        price: '199',
        imagePath: 'assets/images/whiteAir.png',
        description:
            'Bouncy cushioning is paired with sofy yet supportive foam'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe){
    if (userCart.contains(shoe)) {
      shoe.quantity++;
    }
    else {
      userCart.add(shoe);
    }
    // userCart.add(shoe);
    //we have to notify listeners anytime we need to update the state. So we need this to sort of deal with having a lot of diffrent states in a few different pages like the cart as well as the shop page. And so we have to go to our shop pge page and wrap everything in a consumer
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();// really important b/c it tells Consumer to rebuild the list
  }
}



