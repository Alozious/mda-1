import 'package:flutter/material.dart';

class Fruitsinfo extends StatefulWidget {
  const Fruitsinfo({Key? key}) : super(key: key);

  @override
  _FruitsinfoState createState() => _FruitsinfoState();
}

class _FruitsinfoState extends State<Fruitsinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.pink,
        elevation: 0,
        title: const Text("Fruits"),
        actions: const [],
      ),
      body: Container(


      ),
    );
  }
}
