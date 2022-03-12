import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

class Tip extends StatefulWidget {
  const Tip({Key? key}) : super(key: key);

  @override
  State<Tip> createState() => _TipState();
}

class _TipState extends State<Tip> {
  static const int pink = 0xFFeb406a;
  var date;

  @override
  void initState() {
    var now = DateTime.now();
    date = now.toString().substring(0, 10);
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
                            color: Colors.cyan,
                          ),
                          height: 450,
                          width: 50,
                          // child: const Center(child: Text("LEFT")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(40)),
                            height: 450,
                            width: 250,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // TIP OF THE DAY TEXT
                                  const Text(
                                    "# FACT",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text(
                                    "One in Four of the World’s Children is Stunted.",
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),

                                  // SHARE BUTTON
                                  ElevatedButton(
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 10)),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.pink),
                                      ),
                                      // backgroundColor: ,
                                      onPressed: () async {
                                        await Share.share(
                                            "One in Four of the World’s Children is Stunted.");
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
                                      ))
                                ],
                              ),
                            )),
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
                          // child: const Center(child: Text("RIGHT")),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),

              // Displaying the current date at the bottom
              Text(
                date,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ],
          )),
    );
  }
}
