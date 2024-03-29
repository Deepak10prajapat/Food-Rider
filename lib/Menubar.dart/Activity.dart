import 'package:first_project/Menubar.dart/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActivityButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ActivityButton();
  }
}

class _ActivityButton extends State<ActivityButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 80,
                  width: 80,
                  child: const Image(image: AssetImage("assets/empty.png"))),
              const SizedBox(
                height: 8,
              ),
              const Text("Sorry you don't have any activity"),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => ProfilePage()));
                    });
                  },
                  child: const Text("Go Back")),
            ],
          ),
        ));
  }
}
