import 'package:first_project/Menubar.dart/EarningPage.dart';
import 'package:first_project/Menubar.dart/Settings.dart';
import 'package:first_project/Screen/food_screens/New_Order.dart';
import 'package:first_project/Screen/food_screens/Orders_page.dart';
import 'package:first_project/Screen/food_screens/Payment_Status.dart';
import 'package:first_project/Menubar.dart/Profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
          floatingActionButton: Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              child: const Icon(Icons.notification_add),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => New_Order()));
                setState(() {});
              },
            ),
          ),
          appBar: AppBar(
            title: const Text("Hey! Rider"),
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: const Icon(Icons.search)),
              PopupMenuButton(
                  icon: const Icon(Icons.menu),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                          child: const Text("Profile")),
                      PopupMenuItem(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                          child: const Text("Settings")),
                      PopupMenuItem(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Earnings()));
                          },
                          child: const Text("Total Earnings")),
                    ];
                  })
            ],
            backgroundColor: Colors.redAccent[400],
            bottom: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey),
                tabs: const [
                  Tab(
                    child: Text(
                      " Orders",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Payment Status",
                    ),
                  )
                ]),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.brown[300],
                child: Orders(),
              ),
              Container(
                color: Colors.teal[200],
                child: Payment_Status(),
              )
            ],
          )),
    );
  }
}
