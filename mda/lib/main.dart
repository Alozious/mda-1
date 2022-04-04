import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mda/contact.dart';
import 'package:mda/faqspage.dart';
import 'package:mda/foodfacts.dart';
import 'package:mda/fruitspage.dart';
import 'package:mda/homepage.dart';
import 'package:mda/login.dart';
import 'package:mda/signup.dart';
import 'package:mda/terms.dart';
import 'package:mda/tip.dart';
import 'package:mda/vegetablespage.dart';
import 'drawer.dart';
import 'package:mda/profile_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // Initializing Firebase App
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  var randIndex = Random().nextInt(5);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
  
          theme: ThemeData(
          primaryColor: Colors.black,
          dividerColor: Colors.pink,
        ),
  
      routes: {
        "drawer": (context) => const DrawerScreen(),
        "home": (context) => const HomePage(),
        "terms": (context) => const Terms(),
        "faqspage": (context) => const Faq(),
        "foodfacts": (context) => const Foodfactspage(),
        "login": (context) => const Login(),
        "signup": (context) => const Signup(),
        "profile": (context) => const Profile(),
        "tip": (context) => Tip(randIndex: randIndex),
        "contact": (context) => const Contact(),
         "vegetablespage": (context) => const Vegetablesinfo(),
         "fruitspage": (context) => const Fruitsinfo(),

      },
      home: Stack(
        children: const [
          DrawerScreen(),
          HomePage(),
        ],
      ),
    );
  }
}
