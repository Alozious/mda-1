import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Tip extends StatefulWidget {
  int randIndex;

  Tip({Key? key, required this.randIndex}) : super(key: key);

  @override
  State<Tip> createState() => _TipState();
}

class _TipState extends State<Tip> {
  static const int pink = 0xFFeb406a;
  var date = "";

  var days = {
    '1': 'Monday',
    '2': 'Tuesday',
    '3': 'Wednesday',
    '4': 'Thursday',
    '5': 'Friday',
    '6': 'Saturday',
    '7': 'Sunday'
  };

  var weekDay;

  @override
  void initState() {
    var now = DateTime.now();
    date = now.toString().substring(0, 10);
// print(date);
    var day = now.weekday.toString();
    weekDay = days[day];
    print(weekDay);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(pink),
      appBar: AppBar(
        title: const Text(
          "TIP OF THE DAY",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: const Color(pink),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 68,
      ),
      body: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            color: Color.fromARGB(255, 154, 236, 247),
                          ),
                          height: 450,
                          width: 50,
                          // child: const Center(child: Text("LEFT")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 196, 228, 233),
                                borderRadius: BorderRadius.circular(40)),
                            height: 450,
                            width: 250,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: ListView(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // TIP OF THE DAY TEXT
                                  const Text(
                                    "# Did You Know?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 38,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  StreamBuilder<QuerySnapshot>(
                                    stream: FirebaseFirestore.instance
                                        .collection("tips")
                                        .snapshots(),
                                    builder: (context, snapshot) {
                                      // Checking if data has been returned from the database
                                      if (snapshot.hasData) {
                                        Future.delayed(
                                            const Duration(days: 1), () {
                                          setState(() {
                                            widget.randIndex = Random()
                                                .nextInt(snapshot.data!.size);
                                          });
                                          print(widget.randIndex);
                                        });

                                        return Text(
                                          snapshot.data!.docs[widget.randIndex]["tip"],
                                          style: const TextStyle(
                                            fontSize: 26,
                                          ),
                                          textAlign: TextAlign.center,
                                        );
                                      } else if (snapshot.hasError) {
                                        return const Text(
                                            "Error Processing File");
                                      } else {
                                        return const Text(
                                            'Loading Please wait');
                                      }
                                    },
                                  ),

                                  const SizedBox(
                                    height: 50,
                                  ),

                                  // SHARE BUTTON
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 28),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                              const EdgeInsets.symmetric(
                                                  horizontal: 20,
                                                  vertical: 10)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.pink),
                                        ),
                                        // backgroundColor: ,
                                        onPressed: () async {
                                          await Share.share(
                                              "1 in 4 of the World’s Children is Stunted.");
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Text("Share"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(FontAwesomeIcons.shareAlt),
                                          ],
                                        )),
                                  )
                                ],
                              ),
                            )),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 154, 236, 247),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              )),
                          height: 450,
                          width: 50,
                          // child: const Center(child: Text("RIGHT")),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),

              // Displaying the current date at the bottom
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    weekDay,
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
