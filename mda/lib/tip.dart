import 'package:flutter/material.dart';

class Tip extends StatefulWidget {
  const Tip({Key? key}) : super(key: key);

  @override
  State<Tip> createState() => _TipState();
}

class _TipState extends State<Tip> {
  static const int pink = 0xFFeb406a;
  @override
  void initState() {
    var now = DateTime.now();
    var date = now.toString().substring(0, 10);
    print(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(pink),
      appBar: AppBar(
        title: const Text(
          "TIP OF THE DAY",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(pink),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 65,
      ),
      body: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Colors.cyan,
                      ),
                      height: 450,
                      width: 50,
                      child: const Center(child: Text("LEFT")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(40)),
                        height: 450,
                        width: 250,
                        child: const Center(child: Text("TIP OF THE DAY")),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          )),
                      height: 450,
                      width: 50,
                      child: const Center(child: Text("RIGHT")),
                    ),
                  ],
                ),
              ))),
    );
  }
}
