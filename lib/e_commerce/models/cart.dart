import 'package:mitch_koko/e_commerce/models/shoe.dart';

class Cart {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Shoe 1',
        price: '200',
        imagePath: 'assets/nike_images/image1.png',
        description: 'Awesome kicks that literally make you fly'),
    Shoe(
        name: 'Shoe 2',
        price: '300',
        imagePath: 'assets/nike_images/image2.png',
        description: 'Nice shoe'),
    Shoe(
        name: 'Shoe 3',
        price: '150',
        imagePath: 'assets/nike_images/image3.png',
        description: 'Nice shoe'),
    Shoe(
        name: 'Shoe 4',
        price: '250',
        imagePath: 'assets/nike_images/image4.png',
        description: 'Nice shoe'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
