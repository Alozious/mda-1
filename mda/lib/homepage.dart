import 'package:flutter/material.dart';
import 'package:mda/drawer.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool drawerOpen = false;
  double radius = 0;

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
                backgroundColor: const Color(0xFFeb406a),
                title: const Text("Malnutrition Digital Assistant"),
                leading: IconButton(
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
              body: const Center(
                child: Text("HOMEPAGE"),
              ),
            ),
          )),
    );
  }
}
