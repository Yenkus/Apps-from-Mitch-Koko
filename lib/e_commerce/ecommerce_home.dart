import 'package:flutter/material.dart';
import 'package:mitch_koko/e_commerce/ecommerce_home_page.dart';
import 'package:mitch_koko/e_commerce/ecommerce_pages/intro_page.dart';
import 'package:mitch_koko/e_commerce/models/cart.dart';
import 'package:provider/provider.dart';

class ECommerceHome extends StatelessWidget {
  const ECommerceHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
