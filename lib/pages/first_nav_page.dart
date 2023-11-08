import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController myController = TextEditingController();

  String greetingUser = '';

  void greetUser() {
    String username = myController.text;
    setState(() {
      greetingUser = 'Hello $username';
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(greetingUser),
          Padding(
            padding: EdgeInsets.all(size.width * 0.1),
            //Greet user

            child: TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type in name',
              ),
            ),
          ),
          //Button
          ElevatedButton(onPressed: greetUser, child: const Text('Tap me!')),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Second Page')),
    );
  }
}
