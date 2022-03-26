import 'package:flutter/material.dart';

class Vegetablesinfo extends StatefulWidget {
  const Vegetablesinfo({ Key? key }) : super(key: key);

  @override
  _VegetablesinfoState createState() => _VegetablesinfoState();
}

class _VegetablesinfoState extends State<Vegetablesinfo> {
  @override
  Widget build(BuildContext context) {
     
     return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.pink,
        elevation: 0,
        title: const Text("Vegetables"),
        actions: const [],
      ),
      body: Container(
        child:DataTable(
          columns:const <DataColumn>[
            DataColumn(
              label:Text("Name"    ,style: TextStyle(fontStyle: FontStyle.italic),) ),
            DataColumn(
              label:Text("Calcium" ,style: TextStyle(fontStyle: FontStyle.italic),) ),
            DataColumn(
              label:Text("Vitamin" ,style: TextStyle(fontStyle: FontStyle.italic),) ),
            DataColumn(
              label:Text("Proteins",style: TextStyle(fontStyle: FontStyle.italic),) ),
            DataColumn(
              label:Text("Potassium"  ,style: TextStyle(fontStyle: FontStyle.italic),)),
          ], 
          
          rows:  const <DataRow>[
            DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              ),

              DataRow(
              cells: [
                DataCell(Text("Dodo")),
                DataCell(Text("10.2")),
                DataCell(Text("10.5")),
                DataCell(Text("10.6")),
                DataCell(Text("10.7"))
              ]
              )
          ],

          
        )
      ),
    );

  }
}