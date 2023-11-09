import 'package:flutter/material.dart';
import 'package:mitch_koko/e_commerce/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  VoidCallback onTap;
  CartItem({super.key, required this.shoe, required this.onTap});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: GestureDetector(
          onTap: widget.onTap,
          child: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
