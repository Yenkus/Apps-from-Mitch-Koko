import 'package:flutter/material.dart';
import 'package:mitch_koko/e_commerce/e_commerce_components/shoe_tile.dart';
import 'package:mitch_koko/e_commerce/models/cart.dart';
import 'package:mitch_koko/e_commerce/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user, shoe successfully added
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Successfully added!'),
              content: Text('Check your cart'),
            ));
  }

  //Cart cart = Cart();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
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
                            fontSize: size.width * 0.045,
                            color: Colors.grey[400]),
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
                            fontSize: size.width * 0.07,
                            fontWeight: FontWeight.bold),
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
                    itemCount: value.shoeShop.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];
                      // Shoe shoe = Shoe(
                      //     name: cart.shoeShop[index].name,
                      //     price: cart.shoeShop[index].price,
                      //     imagePath: cart.shoeShop[index].imagePath,
                      //     description: cart.shoeShop[index].description);

                      return ShoeTile(
                        shoe: shoe,
                        onTap: () => addShoeToCart(shoe),
                      );
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
            ));
  }
}
