import 'package:flutter/material.dart';

class Another extends StatefulWidget {
  const Another({Key? key}) : super(key: key);

  @override
  State<Another> createState() => _AnotherState();
}

class _AnotherState extends State<Another> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              color: Colors.black,
            ),
            Positioned(
              top: 100,
              right: 10,
              left: 10,
              child: Container(
                height: 500,
                color: Colors.pink,
                child: Form(
                    child: ListView(
                  children: [
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
