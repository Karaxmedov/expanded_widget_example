import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Dersleri"),
        ),
        floatingActionButton: floatingButton(),
        body: Container(
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myRow(),
                Expanded(child: myColumn()),
              ],
            )),
      ),
    );
  }

  FloatingActionButton floatingButton() {
    return FloatingActionButton(
        onPressed: () {}, child: const Icon(Icons.browse_gallery));
  }
  Row myRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        myContainer("D", Colors.orange.shade100),
        myContainer("A", Colors.orange.shade300),
        myContainer("R", Colors.orange.shade400),
        myContainer("T", Colors.orange.shade800),
      ],
    );
  }

  Column myColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        columnContainer("E", Colors.orange.shade100),
        columnContainer("R", Colors.orange.shade200),
        columnContainer("S", Colors.orange.shade300),
        columnContainer("L", Colors.orange.shade400),
        columnContainer("E", Colors.orange.shade500),
        columnContainer("R", Colors.orange.shade600),
        columnContainer("i", Colors.orange.shade700),
      ],
    );
  }

  Expanded columnContainer(String letter, Color color) {
    return Expanded(
      child: myContainer(letter, color),
    );
  }
  Container myContainer(String letter, Color color) {
    return Container(
      width: 75,
      height: 75,
      alignment: Alignment.center,
      color: color,
      margin: const EdgeInsets.all(4),
      child: Text(
        letter,
        style: const TextStyle(fontSize: 48),
      ),
    );
  }
}