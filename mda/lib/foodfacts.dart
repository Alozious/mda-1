import 'package:flutter/material.dart';
import 'package:mda/vegetablespage.dart';
import 'package:mda/fruitspage.dart';

class Foodcardcontet {
  String id;
  String name;
  String percentage;
  String description;
  String image;
  String typedetailspage;

  Foodcardcontet(
      {required this.id,
      required this.name,
      required this.percentage,
      required this.description,
      required this.image,
      required this.typedetailspage});
}

class Foodfactspagebody extends StatelessWidget {
  const Foodfactspagebody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FoodRow(fooddetail[0]);
  }
}

class FoodRow extends StatelessWidget {
  const FoodRow(this.fooddetail, {Key? key}) : super(key: key);
  final Foodcardcontet fooddetail;

  @override
  Widget build(BuildContext context) {
    var foodTexts = Container(
      height: 150.0,
      margin: const EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: const Color(0xff00c6ff),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
        constraints: const BoxConstraints.expand(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),

            Expanded(
                child: Column(
              children: <Widget>[
                Container(height: 4.0),
                Text(
                  fooddetail.name,
                  style: const TextStyle(
                    color: Color.fromARGB(186, 1, 6, 71),
                    fontSize: 30,
                    letterSpacing: 0.3,
                  ),
                ),
                Container(height: 3.0),
                Text(
                  fooddetail.description,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      letterSpacing: 0.3,
                      height: 1.3),
                ),
              ],
            )),

            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(75, 10.0, 0.0, 3.0),
                    child: Container(
                      child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 198, 247, 253),
                          radius: 30,
                          child: Text(
                            fooddetail.percentage,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 214, 15, 81),
                                fontSize: 20,
                                letterSpacing: 0.3,
                                height: 1.3),
                          )),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(70, 15.0, 0.0, 0.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 218, 233, 8), width: 2),
                        backgroundColor: Colors.blue,
                        primary: Colors.white,
                        shadowColor: Colors.red,
                        elevation: 03,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, fooddetail.typedetailspage);
                      },
                      child: const Text("More..."),
                    ),
                  )
                ],
              ),
            )
            //margin: const EdgeInsets.symmetric(vertical: 8.0),
            //height: 3.0,
            //width: 40.0,
            //color: Color.fromARGB(255, 218, 233, 8),

            //Container(
            // ),
          ],
        ),
      ),
    );

    var foodpic = Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      height: 92.0,
      width: 92.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(fooddetail.image), fit: BoxFit.fitHeight),
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: [
          foodTexts,
          foodpic,
        ],
      ),
    );
  }
}

class Foodfactspage extends StatefulWidget {
  const Foodfactspage({Key? key}) : super(key: key);

  @override
  _Foodfactspage createState() => _Foodfactspage();
}

class _Foodfactspage extends State<Foodfactspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.pink,
        elevation: 0,
        title: const Text("Food Facts"),
        actions: const [],
      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: (context, index) => FoodRow(fooddetail[index]),
            itemCount: fooddetail.length,
            padding: const EdgeInsets.symmetric(vertical: 16.0)),
      ),
    );
  }
}

List<Foodcardcontet> fooddetail = [
  Foodcardcontet(
    id: "1",
    name: "Vegetables",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/vegetables.jpg",
    typedetailspage: "vegetablespage",

  ),
  Foodcardcontet(
    id: "1",
    name: "Fruits",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/fruits.jpg",
    typedetailspage:"fruitspage",
  ),
  Foodcardcontet(
    id: "1",
    name: "Mars",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/vegetables.jpg",
    typedetailspage:"vegetablespage",
  ),
  Foodcardcontet(
    id: "1",
    name: "Mars",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/vegetables.jpg",
    typedetailspage:"vegetablespage",
  ),
  Foodcardcontet(
    id: "1",
    name: "Mars",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/vegetables.jpg",
    typedetailspage:"vegetablespage",
  ),
];
