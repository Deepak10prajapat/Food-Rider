import 'package:first_project/Screen/loginPage.dart';
import 'package:flutter/material.dart';

class Forgetpass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Forgetpass();
}

class _Forgetpass extends State<Forgetpass> {
  bool _passerror = true;
  bool _cpasserror = true;
  bool _texterror = true;
  var _textcontroller = TextEditingController();
  var _passcontroller = TextEditingController();
  var _cpasscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 300,
                width: 911,
                child: const Image(
                    fit: BoxFit.cover, image: AssetImage("assets/HFJ.png"))),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: _textcontroller,
                      decoration: InputDecoration(
                          hintText: "Email/Mobile Number",
                          label: const Text("Email/Mobile Number"),
                          errorText: _texterror
                              ? ("please enter Email/Mobile Number")
                              : null,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _passcontroller,
                      decoration: InputDecoration(
                          hintText: "New password",
                          label: const Text("New password"),
                          errorText: _passerror
                              ? ("Please enter your password")
                              : null,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _cpasscontroller,
                      decoration: InputDecoration(
                          hintText: "Confirm password",
                          label: const Text("Confirm password"),
                          errorText: _cpasserror
                              ? ("Please enter your password")
                              : null,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                          setState(() {
                            _passerror = _passcontroller.text.isEmpty;
                            _cpasserror = _cpasscontroller.text.isEmpty;
                            _texterror = _textcontroller.text.isEmpty;
                          });
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(fontSize: 20),
                        )),
                  ]),
            )
          ],
        ),
      ]),
    );
  }
}
