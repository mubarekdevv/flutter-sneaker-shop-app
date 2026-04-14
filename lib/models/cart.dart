import 'package:ecommerce_app_ui/models/shoe.dart';

class Cart {
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

  //remove item from cart
}



