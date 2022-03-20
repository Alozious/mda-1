import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mda/contact.dart';
import 'package:mda/faqspage.dart';
import 'package:mda/homepage.dart';
import 'package:mda/terms.dart';
import 'package:mda/tip.dart';
import 'drawer.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

// aloyzious comments
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
      routes: {
        "drawer": (context) => const DrawerScreen(),
        "home": (context) => const HomePage(),
        "terms": (context) => const Terms(),
        "tip": (context) => Tip(randIndex: randIndex),
        "faqspage": (context) => const Faq(),
        "contact": (context) => const Contact(),
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
