import 'package:flutter/material.dart';
import 'package:mda/faqspage.dart';
import 'package:mda/homepage.dart';
import 'package:mda/terms.dart';
import 'drawer.dart';

void main(List<String> args) {
  runApp(const MainApp());
}

// aloyzious comments
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
        "faqspage": (context) => const Faq(),
        

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
