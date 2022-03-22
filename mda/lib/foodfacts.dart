import 'package:flutter/material.dart';

class Planet {
  String id;
  String name;
  String percentage;
  String description;
  String image;

  Planet(
      {required this.id,
      required this.name,
      required this.percentage,
      required this.description,
      required this.image});
}

class Homepagebody extends StatelessWidget {
  const Homepagebody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PlanetRow(planets[0]);
  }
}

class PlanetRow extends StatelessWidget {
  const PlanetRow(this.planets, {Key? key}) : super(key: key);
  final Planet planets;

  @override
  Widget build(BuildContext context) {
    var planetCard = Container(
      height: 124.0,
      margin: const EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 55, 161, 248),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height: 3.0),
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
            Text(
              planets.name,
              style: const TextStyle(
                  color: Color.fromARGB(186, 1, 6, 71),
                  fontSize: 30,
                  letterSpacing: 0.3,
                  height: 1.3),
            ),
            Container(height: 10.0),
            Text(
              planets.description,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  letterSpacing: 0.3,
                  height: 1.3),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                height: 2.0,
                width: 18.0,
                color: const Color(0xff00c6ff)),
            Row(
              children: <Widget>[
                Container(width: 8.0),
                Text(
                  planets.percentage,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 38, 174, 228),
                      fontSize: 30,
                      letterSpacing: 0.3,
                      height: 1.3),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    var planetThumbnail = Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      height: 92.0,
      width: 92.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(planets.image), fit: BoxFit.fitHeight),
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: [
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}

class Homepagee extends StatefulWidget {
  const Homepagee({Key? key}) : super(key: key);

  @override
  _Homepagee createState() => _Homepagee();
}

class _Homepagee extends State<Homepagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.pink,
        elevation: 0,
        title: const Text("FREQUENTLY ASKED QUESTIONS"),
        actions: const [],
      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: (context, index) => PlanetRow(planets[index]),
            itemCount: planets.length,
            padding: const EdgeInsets.symmetric(vertical: 16.0)),
      ),
    );
  }
}

List<Planet> planets = [
  Planet(
    id: "1",
    name: "Vegetables",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/vegetables.jpg",
  ),
  Planet(
    id: "1",
    name: "Fruits",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/fruits.jpg",
  ),
  Planet(
    id: "1",
    name: "Mars",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/vegetables.jpg",
  ),
  Planet(
    id: "1",
    name: "Mars",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/vegetables.jpg",
  ),
  Planet(
    id: "1",
    name: "Mars",
    percentage: "15%",
    description: "Lorem ipsum...",
    image: "assets/images/vegetables.jpg",
  ),
];
