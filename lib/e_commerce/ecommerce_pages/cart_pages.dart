import 'package:flutter/material.dart';
import 'package:mitch_koko/e_commerce/e_commerce_components/cart_item.dart';
import 'package:mitch_koko/e_commerce/models/cart.dart';
import 'package:mitch_koko/e_commerce/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const Text(
                    'My Cart',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.userCart.length,
                          itemBuilder: (context, index) {
                            //get individual shoe
                            Shoe individualShoe = value.getUserCart()[index];
                            return CartItem(
                              shoe: individualShoe,
                            );
                          })),
                ],
              ),
            ));
  }
}
