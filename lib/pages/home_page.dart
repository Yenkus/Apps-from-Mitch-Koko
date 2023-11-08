import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent[200],
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    size: size.width * 0.15,
                  ),
                  SizedBox(
                    height: size.width * 0.03,
                  ),
                  Text(
                    'Damien\'s App Gallery',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.05,
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('HOME'),
            ),
            ListTile(
              leading: const Icon(Icons.navigate_next),
              title: const Text('Navigator Bottom'),
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/navigatorBottomPage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.check),
              title: const Text('Todo App'),
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/todoPage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.shop),
              title: const Text('E-Commerce App'),
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/eCommerceHome');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
