import 'package:first_project/Screen/food_screens/Homepage.dart';
import 'package:first_project/order_details/Cashon.dart';
import 'package:first_project/order_details/NewOrderNotification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class New_Order extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _New_Order();
  }
}

class _New_Order extends State<New_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()));

              setState(() {});
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("New Orders"),
      ),
      body: ListView(children: [
        Column(children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (contex) => NewOrder()));
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 130,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.blue[100]),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "New Order",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.bike_scooter_sharp,
                            ),
                            Spacer(),
                            Text(
                              "20:22  11/03/2023",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Name: XYZ                                    ',
                                ),
                                Text("Phone No.:123456778                "),
                                Text("Address: abcd,Churu,Rajasthan"),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Cashon()));
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 130,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.blue[100]),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "New Order",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.bike_scooter_sharp,
                            ),
                            Spacer(),
                            Text(
                              "20:22  11/03/2023",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Name: XYZ                                    ',
                                ),
                                Text("Phone No.:123456778                "),
                                Text("Address: abcd,Churu,Rajasthan"),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Cashon()));
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 130,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.blue[100]),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "New Order",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.bike_scooter_sharp,
                            ),
                            Spacer(),
                            Text(
                              "20:22  11/03/2023",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Name: XYZ                                    ',
                                ),
                                Text("Phone No.:123456778                "),
                                Text("Address: abcd,Churu,Rajasthan"),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => NewOrder()));
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 130,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.blue[100]),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "New Order",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.bike_scooter_sharp,
                            ),
                            Spacer(),
                            Text(
                              "20:22  11/03/2023",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Name: XYZ                                    ',
                                ),
                                Text("Phone No.:123456778                "),
                                Text("Address: abcd,Churu,Rajasthan"),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
