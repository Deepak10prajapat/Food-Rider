import 'package:first_project/Screen/food_screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotDeliveredPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Order_Status();
  }
}

class _Order_Status extends State<NotDeliveredPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: const Icon(Icons.close))
        ],
        title: const Text(
          "Not Deliverd",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "Payment Method",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurple[400],
                  fontWeight: FontWeight.w600),
            ),
            const Text(
              "will be paid at door",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Contact Details",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple[400]),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Name: Deepak Prajapat",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Text(
              "Phone NO: 123123123",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Text(
              "ADDRESS: Near White clock tower,Churu ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Order Details",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple[400]),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Date: 04/12/2023",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Text(
              "TOTAL AMOUNT: 600 Only",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              SizedBox(
                height: 110,
                width: 300,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("Product:Chicken Handi"),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Amount: 2"),
                        Text("cost: 300 x 2 = 600")
                      ],
                    ),
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 295,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          backgroundColor: Colors.deepPurple[400]),
                      onPressed: () {},
                      child: const Text(
                        "Mark as Delivered",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
