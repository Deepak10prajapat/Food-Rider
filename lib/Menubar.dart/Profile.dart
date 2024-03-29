import 'package:first_project/Menubar.dart/Activity.dart';
import 'package:first_project/Screen/food_screens/Homepage.dart';
import 'package:first_project/Screen/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: use_key_in_widget_constructors
class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  bool button = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.blue[100],
        title: const Text("Profile"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.edit))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 130,
                width: 600,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              filterQuality: FilterQuality.high,
                              image: AssetImage("assets/22.jpg")),
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.purple[200]),
                      // child: const Center(
                      //   child: Image(
                      //       fit: BoxFit.cover,
                      //       filterQuality: FilterQuality.high,
                      //       image: AssetImage("assets/22.jpg")),
                      // ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          "Deepak Prajapat",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        InkWell(
                          focusColor: Colors.lightBlueAccent,
                          onTap: () {
                            setState(() {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => ActivityButton()));
                            });
                          },
                          child: const Text(
                            "View activity",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 17),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 118,
                      width: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          const SizedBox(height: 25),
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child:
                                  const Icon(Icons.favorite_outline_outlined)),
                          const SizedBox(height: 5),
                          const Text(
                            "Favourites",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 118,
                      width: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          const SizedBox(height: 25),
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(Icons.currency_rupee_sharp)),
                          const SizedBox(height: 5),
                          const Text(
                            "Money",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 58,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(Icons.person_outline),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "Your profile",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 19),
                      ),
                      const Spacer(),
                      Text(
                        "32% COMPLITED",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.red,
                            backgroundColor: Colors.red[100]),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 58,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(Icons.star_border),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "Your rating",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 19),
                      ),
                      const Spacer(),
                      Container(
                        height: 35,
                        color: Colors.grey[300],
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.star_border)),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                height: 275,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 4,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Money",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(Icons.card_membership),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Buy Gift Card",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center,
                                        image: AssetImage("assets/gift.png")),
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                " Claim Gift Card",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(Icons.credit_score),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                " Hunger's Credits",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(Icons.payment),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                " Manage Payment methods",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 17),
              Container(
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 4,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Hunger's For Enterprise",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Image(
                                  fit: BoxFit.fitWidth,
                                  height: 2,
                                  width: 2,
                                  image: AssetImage("assets/office.webp")),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              "For employees",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 17),
              Container(
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 4,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Coupons",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage("assets/office.webp")),
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              "Collected coupons",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 4,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "More",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(Icons.autofps_select_rounded),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Choose language",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(Icons.info_outline),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                " About",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(Icons.edit_note_outlined),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                " Send feedback",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(Icons.payment),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                " Report a safety emergency",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(Icons.payment),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                " Log out",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Column(
//         children: [
//           const SizedBox(
//             height: 50,
//           ),
//           Row(
//             children: [
//               Image.asset(
//                 "assets/flip.jpeg",
//                 height: 50,
//               ),
//               const Text(
//                 "Flipkart",
//                 style: TextStyle(fontSize: 20),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                 onPressed: () {
//                   button = !button;
//                   setState(() {});
//                 },
//                 icon: Icon(button
//                     ? Icons.radio_button_checked_sharp
//                     : Icons.radio_button_off),
//               )
//               // Text(data)
//             ],
//           )
//         ],
//       ),