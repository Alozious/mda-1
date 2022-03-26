import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const int pink = 0xFFeb406a;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: 260,
            decoration: const BoxDecoration(
                color: Color(pink),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome To Malnutrition Digital Assistant",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 21, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Click The Camera Icon ",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            FontAwesomeIcons.camera,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "At The Bottom To Start",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Diagnosis",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/baby.jpg",
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  height: 200,
                  width: 160,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(120, 0, 0, 0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                            child: Text(
                          "MALNUTRITION DIGITAL ASSISTANT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      )),
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/r.jpg",
                          ),
                          fit: BoxFit.fitHeight),
                    ),
                    height: 200,
                    width: 160,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(120, 0, 0, 0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(
                              child: Text(
                            "MALNUTRITION DIGITAL ASSISTANT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/globe.jpg",
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  height: 200,
                  width: 160,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(120, 0, 0, 0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                            child: Text(
                          "MALNUTRITION DIGITAL ASSISTANT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/baby.jpg",
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  height: 200,
                  width: 160,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(120, 0, 0, 0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                            child: Text(
                          "MALNUTRITION DIGITAL ASSISTANT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/r.jpg",
                        ),
                        fit: BoxFit.fitHeight),
                  ),
                  height: 200,
                  width: 160,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(120, 0, 0, 0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                            child: Text(
                          "MALNUTRITION DIGITAL ASSISTANT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      )),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
          )
        ],
      ),
    );
  }
}
