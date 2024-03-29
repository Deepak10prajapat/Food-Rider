import 'package:first_project/Screen/food_screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Earnings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Earnings();
  }
}

class _Earnings extends State<Earnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()));
                  setState(() {});
                },
                icon: const Icon(Icons.home))
          ],
          backgroundColor: Colors.deepPurple[400],
          title: const Text("Total Earnings"),
        ),
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/rupee.png")),
            Text("You don't have any earnings")
          ],
        )));
  }
}
