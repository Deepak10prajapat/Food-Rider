import 'package:first_project/Screen/food_screens/New_Order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Location extends StatefulWidget {
  Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            child: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => New_Order()));
              setState(() {});
            },
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/location.webp"))),
        ));
  }
}
