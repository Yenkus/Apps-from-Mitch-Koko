import 'package:flutter/material.dart';

import 'package:mitch_koko/e_commerce/ecommerce_home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(size.width * 0.08),
                child: Image.asset('assets/nike_images/logo.png'),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'Just Do it',
                style: TextStyle(
                    fontSize: size.width * 0.08, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                'Brand new sneakers and custom kicks made with premiunm quality',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ECommerceHomePage())),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(size.width * 0.06),
                  child: const Center(
                    child: Text(
                      'SHOP NOW',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
