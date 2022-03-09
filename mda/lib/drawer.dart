import 'package:flutter/material.dart';
import 'package:mda/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 6),
        color: Colors.white,
        child: Center(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15, left: 15),
                child: const Text(
                  "MDA",
                  style: TextStyle(
                    fontFamily: "Tesla",
                    fontSize: 50,
                    color: Color(0xFFeb406a),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 70),
                child: const Text(
                  "MALNUTRITION DIGITAL ASSISTANT",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              ListTile(
                selectedTileColor: Colors.black,
                leading: const Icon(
                  FontAwesomeIcons.home,
                  size: 30,
                  color: Color(0xFFeb406a),
                ),
                title: Text("Home",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink[600],
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    )),
                onTap: () {},
              ),

              // INFO TILE
              ListTile(
                leading: const Icon(
                  Icons.info,
                  size: 35,
                  color: Colors.black,
                ),
                title: const Text(
                  "Info",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "info");
                },
              ),

              // NEARBY DOCTOR TILE
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.stethoscope,
                  size: 30,
                  color: Colors.black,
                ),
                title: const Text(
                  "Nearby Doctor",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "doctor");
                },
              ),

              // FAQ TILE
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.comments,
                  size: 30,
                  color: Colors.black,
                ),
                title: const Text(
                  "FAQ",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "faq");
                },
              ),

              // ABOUT TILE
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.atom,
                  size: 30,
                  color: Colors.black,
                ),
                title: const Text(
                  "About",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "terms");
                },
              ),

              // SHARE TILE
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.shareAlt,
                  size: 30,
                  color: Colors.black,
                ),
                title: const Text(
                  "Share",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "share");
                },
              ),

              const SizedBox(
                height: 60,
              ),

              // TIP OF THE DAY TILE
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.lightbulb,
                  size: 28,
                  color: Colors.yellow,
                ),
                title: const Text(
                  "Tip Of The Day",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "tip");
                },
              ),

              const SizedBox(
                height: 15,
              ),

              // LOGIN TILE
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.powerOff,
                  size: 30,
                  color: Colors.black,
                ),
                title: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "login");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
