import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mda/drawer.dart';
import 'package:mda/results.dart';

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
  String pickedImagePath = "";
  bool imagePicked = false;

  _popupDialog(BuildContext context) {
    return AlertDialog(
        title: const Text(
          "SELECT IMAGE SOURCE",
          style: TextStyle(fontSize: 19),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // PICKING IMAGE FROM CAMERA
            ListTile(
              title: const Text("Pick From Camera"),
              leading: const Icon(
                FontAwesomeIcons.camera,
                color: Colors.pink,
              ),
              onTap: () async {
                final XFile? image =
                    await _picker.pickImage(source: ImageSource.camera);
                // printing the image path
                print(image!.path);
                setState(() {
                  pickedImagePath = image.path;
                  isHome = false;
                  imagePicked = true;
                });

                Navigator.pop(context);
              },
            ),

            // PICKING IMAGE FROM GALLERY
            ListTile(
              title: const Text("Pick From Gallery"),
              leading: const Icon(
                FontAwesomeIcons.image,
                color: Colors.pink,
              ),
              onTap: () async {
                final XFile? image =
                    await _picker.pickImage(source: ImageSource.gallery);
                // printing the image path
                print(image!.path);
                setState(() {
                  pickedImagePath = image.path;
                  isHome = false;
                  imagePicked = true;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    if (pickedImagePath == "") {
      setState(() {
        imagePicked = false;
      });
    } else {
      setState(() {
        imagePicked = true;
      });
    }
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
                  : imagePicked
                      ? Results(
                          imgPath: pickedImagePath,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Center(
                              child: Text(
                                "NO IMAGE SELECTED",
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: Text(
                                "Click Button Below To Select An Image",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            SizedBox(height: 20),
                            Icon(FontAwesomeIcons.arrowDown),
                            Icon(FontAwesomeIcons.arrowDown),
                          ],
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
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => _popupDialog(context));
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
