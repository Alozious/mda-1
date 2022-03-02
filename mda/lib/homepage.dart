import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mda/drawer.dart';
import 'package:mda/results.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const int pink = 0xFFeb406a;
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool drawerOpen = false;
  double radius = 0;
  bool isHome = true;
  Color? activeColor = Colors.white;
  Color? inactiveColor = Colors.black;
  final ImagePicker _picker = ImagePicker();
  late String pickedImagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: drawerOpen
          ? () {
              setState(() {
                xOffset = 0;
                yOffset = 0;
                scaleFactor = 1;
                drawerOpen = false;
                radius = 0;
              });
            }
          : null,
      child: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.black,
          ),
          duration: const Duration(milliseconds: 400),
          transform: Matrix4.translationValues(xOffset, yOffset, 1)
            ..scale(scaleFactor),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(pink),
                title: const Text("Malnutrition Digital Assistant"),
                leading: drawerOpen
                    ? IconButton(
                        icon: const Icon(FontAwesomeIcons.chevronLeft),
                        onPressed: () {
                          drawerOpen = false;
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            radius = 0;
                          });
                        },
                      )
                    : IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          drawerOpen = true;
                          setState(() {
                            xOffset = 210;
                            yOffset = 180;
                            scaleFactor = 0.65;
                            radius = 60;
                          });
                        },
                      ),
                actions: const [
                  Icon(Icons.more_vert_rounded),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              body: isHome
                  ? const Center(
                      child: Text("HOMEPAGE"),
                    )
                  : Results(
                      imgPath: pickedImagePath,
                    ),

              // BOTTOM NAVIGATION BAR
              bottomNavigationBar: BottomAppBar(
                shape: const CircularNotchedRectangle(),
                notchMargin: 6,
                color: const Color(pink),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // HOME BUTTON
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isHome = true;
                          });
                        },
                        child: Row(
                          children: [
                            IconButton(
                                color: isHome ? activeColor : inactiveColor,
                                tooltip: "Homepage",
                                onPressed: () {
                                  setState(() {
                                    isHome = true;
                                  });
                                },
                                icon: const Icon(FontAwesomeIcons.home)),
                            Text(
                              "HOME",
                              style: TextStyle(
                                  color: isHome ? activeColor : inactiveColor),
                            ),
                          ],
                        ),
                      ),

                      // RESULTS BUTTON
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isHome = false;
                          });
                        },
                        child: Row(
                          children: [
                            IconButton(
                                color: isHome ? inactiveColor : activeColor,
                                tooltip: "Results",
                                onPressed: () {
                                  setState(() {
                                    isHome = false;
                                  });
                                },
                                icon: const Icon(FontAwesomeIcons.bars)),
                            Text(
                              "RESULTS",
                              style: TextStyle(
                                  color: isHome ? inactiveColor : activeColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // CAMERA FLOATING ACTION BUTTON
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () async {
                  final XFile? image =
                      await _picker.pickImage(source: ImageSource.gallery);

                  // printing the image path
                  print(image!.path);

                  setState(() {
                    pickedImagePath = image.path;
                    isHome = false;
                  });
                },
                child: const Icon(FontAwesomeIcons.camera),
              ),

              // FLOATING ACTION BUTTON LOCATION
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
            ),
          )),
    );
  }
}
