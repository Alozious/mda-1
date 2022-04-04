import 'package:flutter/material.dart';


class PlanetRow extends StatelessWidget {
  const PlanetRow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
      top: 16.0,
        bottom: 16.0, 
     left: 24.0,
      right: 24.0,
   )
    );
  }
}





class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  static const int pink = 0xFFeb406a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(pink),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color(pink),
        elevation: 0,
        title: const Text("TERMS AND CONDITIONS"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),
        ],
      ),
      
      
      
      
      body: Column(
         children:<Widget>[
         Row(
           
        

         )
         ],

      ) 
    );
  }
}
