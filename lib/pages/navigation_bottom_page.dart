import 'package:flutter/material.dart';
import 'package:mitch_koko/pages/first_nav_page.dart';

class NavigatorBottomPage extends StatefulWidget {
  const NavigatorBottomPage({super.key});

  @override
  State<NavigatorBottomPage> createState() => _NavigatorBottomPageState();
}

class _NavigatorBottomPageState extends State<NavigatorBottomPage> {
  int selectedIndex = 0;

  //This method navigates the pages on the bottom bar
  void _navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List _page = [
    //First page
    const FirstPage(),

    //Second page
    const SecondPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Second Page',
          ),
        ],
      ),
    );
  }
}
