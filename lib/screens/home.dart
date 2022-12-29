import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List notes = [
    [DateTime.now().toString(), "ASDASDAD"],
  ];

  void addNew() {
    notes = [
      [1, "asd"],
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: addNew,
        child: Icon(Icons.arrow_drop_down),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Orugo"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
            height: 50,
            color: Colors.pink,
            child: Text(notes[index][1]),
          );
          separatorBuilder:
          (BuildContext context, int index) => const Divider();
        },
      ),
    );
  }
}
