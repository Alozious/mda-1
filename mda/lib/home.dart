import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  static const int pink = 0xFFeb406a;
  late Animation _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _animation =
        Tween<double>(begin: 0.0, end: 50.0).animate(_animationController);

    // adding a listener to listen for changes in the animation value
    _animation.addListener(() {
      setState(() {
        print(_animation.value);
      });
    });

    // starting the animation and making it repeat
    _animationController.forward();
  }

// disposing off the animation controller
  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: 260,
            decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //   begin: Alignment.bottomLeft,
                //   end: Alignment.topRight,
                //   colors: [
                //     Color(pink),
                //     Colors.pink,
                //     Colors.black,
                //   ],
                // ),
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
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
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
                          height: _animation.value,
                          width: _animation.value,
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
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Articles",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                    print("SEE ALL CLICKED");
                  },
                  child: const Text(
                    "See All",
                    style: TextStyle(fontSize: 18, color: Colors.pink),
                  ),
                ),
              ],
            ),
          ),
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
                              color: Colors.white, fontWeight: FontWeight.w100),
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
