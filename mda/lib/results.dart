import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/baby.jpg"), fit: BoxFit.cover),
        color: Colors.yellow,
      ),
      child: const Center(
        child: Text("RESULTS PAGE NEW"),
      ),
    );
  }
}
