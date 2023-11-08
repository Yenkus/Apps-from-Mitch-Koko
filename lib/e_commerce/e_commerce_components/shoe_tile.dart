import 'package:flutter/material.dart';
import 'package:mitch_koko/e_commerce/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 25),
      // padding: const EdgeInsets.all(25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          Padding(
            padding: EdgeInsets.all(size.width * 0.03),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(shoe.imagePath)),
          ),
          // description
          Text(
            shoe.description,
            style: const TextStyle(color: Colors.grey),
          ),
          // price details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$${shoe.price}',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    )),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: size.width * 0.085,
                ),
              ),
            ],
          ),
          // button to add to cart
        ],
      ),
    );
  }
}
