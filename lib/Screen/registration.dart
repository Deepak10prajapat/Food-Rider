import 'package:first_project/Screen/loginPage.dart';

import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Registration();
  }
}

class _Registration extends State<Registration> {
  bool _passwordVisible = false;
  bool _passVisible = true;
  bool _passworderror = false;
  // ignore: non_constant_identifier_names
  bool _Nameerror = false;
  // ignore: non_constant_identifier_names
  bool _Emailerror = false;
  final _namecontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  final _Emailcontroller = TextEditingController();
  var passworderrorcontroller = TextEditingController();
  final _passworderrorcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/HFJ.png"))),
              ),
              TextField(
                controller: _namecontroller,
                decoration: InputDecoration(
                    label: const Text('User ID'),
                    hintText: ("Enter your User ID"),
                    errorText: _Nameerror ? ("Please enter User ID") : null,
                    prefixIcon: const Icon(Icons.person_2_rounded),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _Emailcontroller,
                decoration: InputDecoration(
                    label: const Text('Email ID or Mobile number'),
                    hintText: ("Enter your Email ID or Mobile number"),
                    errorText: _Emailerror
                        ? ("Please enter Email ID or Mobile number")
                        : null,
                    prefixIcon: const Icon(Icons.email_sharp),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: _passwordVisible,
                controller: passworderrorcontroller,
                decoration: InputDecoration(
                    label: const Text('Password'),
                    hintText: ("Enter your Password"),
                    errorText:
                        _passworderror ? ("Please enter password") : null,
                    prefixIcon: const Icon(
                      Icons.key,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(
                          () {
                            _passwordVisible = !_passwordVisible;
                          },
                        );
                      },
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: _passVisible,
                controller: _passworderrorcontroller,
                decoration: InputDecoration(
                    label: const Text('Confirm Password'),
                    hintText: ("Enter your Password"),
                    errorText:
                        _passworderror ? ("Please enter password") : null,
                    prefixIcon: const Icon(
                      Icons.key,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passVisible ? Icons.visibility_off : Icons.visibility,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(
                          () {
                            _passVisible = !_passVisible;
                          },
                        );
                      },
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                      _passworderror = passworderrorcontroller.text.isEmpty;
                      _Nameerror = _namecontroller.text.isEmpty;
                      _Emailerror = _Emailcontroller.text.isEmpty;
                    });
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 25),
                  )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: const Text("Login"))
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
