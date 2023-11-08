import 'package:flutter/material.dart';
import 'package:mitch_koko/TodoApp/todo_app.dart';
import 'package:mitch_koko/e_commerce/ecommerce_home.dart';
import 'package:mitch_koko/pages/home_page.dart';
import 'package:mitch_koko/pages/navigation_bottom_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //Initialize the hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/homePage': (context) => const HomePage(),
        '/navigatorBottomPage': (context) => const NavigatorBottomPage(),
        '/todoPage': (context) => const TodoApp(),
        '/eCommerceHome': (context) => const ECommerceHome(),
      },
    );
  }
}
