import 'package:flutter/material.dart';
import 'package:mitch_koko/e_commerce/e_commerce_components/shoe_tile.dart';
import 'package:mitch_koko/e_commerce/models/cart.dart';
import 'package:mitch_koko/e_commerce/models/shoe.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  Cart cart = Cart();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        // Search bar
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
          padding: EdgeInsets.all(size.width * 0.05),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(
                    fontSize: size.width * 0.045, color: Colors.grey[400]),
              ),
              Icon(Icons.search, color: Colors.grey[400]),
            ],
          ),
        ),
        // Messages
        Padding(
          padding: EdgeInsets.all(size.width * 0.05),
          child: Text(
            'Every one flies.. some fly more than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        // Hot Picks
        Padding(
          padding: EdgeInsets.all(size.width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot picks ',
                style: TextStyle(
                    fontSize: size.width * 0.07, fontWeight: FontWeight.bold),
              ),
              const Text(
                'see more... ',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: cart.shoeShop.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                  name: cart.shoeShop[index].name,
                  price: cart.shoeShop[index].price,
                  imagePath: cart.shoeShop[index].imagePath,
                  description: cart.shoeShop[index].description);
              return ShoeTile(shoe: shoe);
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
