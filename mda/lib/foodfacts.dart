import 'package:flutter/material.dart';
import 'package:mda/vegetablespage.dart';
import 'package:mda/fruitspage.dart';

// CLASS TO CONTAIN FOOD ITEM DETAILS
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

// ARRAY OF FOOD ITEMS
List<Foodcardcontet> fooddetail = [
  Foodcardcontet(
    id: "1",
    name: "Vegetables",
    percentage: "31%",
    description:
        "They provide essential vitamins, minerals, and other nutrients.",
    image: "assets/images/vegetables.jpg",
    typedetailspage: "vegetablespage",
  ),
  Foodcardcontet(
    id: "1",
    name: "Fruits",
    percentage: "27%",
    description: "Fruits are fabulous foods, nutrient-rich inexpensive....",
    image: "assets/images/fruit.jpg",
    typedetailspage: "fruitspage",
  ),
  Foodcardcontet(
    id: "1",
    name: "Amimal Foods",
    percentage: "34%",
    description: "These contain high levels of minerals important for growth",
    image: "assets/images/egg.jpg",
    typedetailspage: "vegetablespage",
  ),
  Foodcardcontet(
    id: "1",
    name: " Legumes",
    percentage: "26%",
    description:
        "Rich in protein, fiber, B vitamins, iron, folate, calcium, potassium, phosphorus, and zinc",
    image: "assets/images/legumes.webp",
    typedetailspage: "vegetablespage",
  ),
  Foodcardcontet(
    id: "1",
    name: "Roots",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/vegetables.jpg",
    typedetailspage: "vegetablespage",
  ),
];

class FoodRow extends StatefulWidget {
  const FoodRow(this.fooddetail, {Key? key}) : super(key: key);

  final Foodcardcontet fooddetail;

  @override
  State<FoodRow> createState() => _FoodRowState();
}

class _FoodRowState extends State<FoodRow> {
  @override
  Widget build(BuildContext context) {
    var foodTexts = GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, widget.fooddetail.typedetailspage);
      },
      child: Container(
        // Box Containing the food item
        height: 150.0,
        margin: const EdgeInsets.only(left: 46.0),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                // Colors.pink,
                Colors.white,
                Colors.cyan,
              ]),
          // color: Color.fromARGB(147, 204, 80, 188),
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
          margin: const EdgeInsets.fromLTRB(50.0, 5.0, 16.0, 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.fooddetail.name,
                      style: const TextStyle(
                        color: Colors.pink,
                        fontSize: 26,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                    ),
                    Container(height: 9.0),
                    Text(
                      widget.fooddetail.description,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        letterSpacing: 0.3,
                        height: 1.2,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              ),

              // PERCENTAGE CIRCLE
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 226, 243, 245),
                radius: 30,
                child: Text(
                  widget.fooddetail.percentage,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 214, 15, 81),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
              //margin: const EdgeInsets.symmetric(vertical: 8.0),
              //height: 3.0,
              //width: 40.0,
              //color: Color.fromARGB(255, 218, 233, 8),

              //Container(
              // ),
            ],
          ),
        ),
      ),
    );

    // The Picture on the side of the card
    var foodpic = Container(
      margin: const EdgeInsets.symmetric(vertical: 26.0),
      alignment: FractionalOffset.centerLeft,
      height: 92.0,
      width: 92.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(widget.fooddetail.image), fit: BoxFit.fitHeight),
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
