import 'package:flutter/material.dart';
import 'package:mda/homepage.dart';
import 'package:mda/terms.dart';
import 'drawer.dart';
import 'package:mda/profile_page.dart';

void main(List<String> args) {
  runApp(const MainApp());
}

// aziz commentss
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return 
     MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          dividerColor: Colors.pink,
        ),
        routes: {
          "drawer": (context) => const DrawerScreen(),
          "home": (context) => const HomePage(),
          "terms": (context) => const Terms(),
          "profile": (context) => const Profile(),
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
