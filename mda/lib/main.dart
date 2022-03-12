import 'package:flutter/material.dart';
import 'package:mda/homepage.dart';
import 'package:mda/terms.dart';
import 'package:mda/tip.dart';
import 'drawer.dart';

void main(List<String> args) {
  runApp(const MainApp());
}

// aziz comments
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "drawer": (context) => const DrawerScreen(),
        "home": (context) => const HomePage(),
        "terms": (context) => const Terms(),
        "tip": (context) => const Tip(),
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
