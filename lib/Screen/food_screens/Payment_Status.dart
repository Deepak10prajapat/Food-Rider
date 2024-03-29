import 'package:first_project/order_details/DeliveredPage.dart';
import 'package:first_project/order_details/NotDeliveredPage.dart';
import 'package:flutter/material.dart';

class Payment_Status extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Payment_Status();
  }
}

class _Payment_Status extends State<Payment_Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (contex) => DeliveredPage()));
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
                              "Paid",
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
                              "11/03/2023",
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
                  MaterialPageRoute(builder: (context) => NotDeliveredPage()));
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
                              "Cash on delivery",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.share_arrival_time_outlined,
                            ),
                            Spacer(),
                            Text(
                              "11/03/2023",
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
                  MaterialPageRoute(builder: (context) => NotDeliveredPage()));
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
                              "Cash on delivery",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.share_arrival_time_outlined,
                            ),
                            Spacer(),
                            Text(
                              "11/03/2023",
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
                  MaterialPageRoute(builder: (context) => DeliveredPage()));
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
                              "Paid",
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
                              "11/03/2023",
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
