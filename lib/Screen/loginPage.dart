import 'package:first_project/Screen/food_screens/Homepage.dart';
import 'package:first_project/Screen/forgetpass.dart';
import 'package:first_project/Screen/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool _passwordVisible = false;
  bool _passworderror = false;
  bool _Nameerror = false;
  var _namecontroller = TextEditingController();
  var passworderrorcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[200],
        body: SingleChildScrollView(
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 350,
                    width: 911,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/HFJ.png")),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          controller: _namecontroller,
                          decoration: InputDecoration(
                              label: const Text('User ID'),
                              hintText: ("Enter your User ID"),
                              errorText:
                                  _Nameerror ? ("Please enter User ID") : null,
                              prefixIcon: const Icon(Icons.person_2_rounded),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
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
                              errorText: _passworderror
                                  ? ("Please enter password")
                                  : null,
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
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Spacer(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Forgetpass()));
                                },
                                child: const Text("Forget Password")),
                          ],
                        ),
                        const SizedBox(
                          height: 0,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                                _passworderror =
                                    passworderrorcontroller.text.isEmpty;
                                _Nameerror = _namecontroller.text.isEmpty;
                              });
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(fontSize: 25),
                            )),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account ?"),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (Context) =>
                                              Registration()));
                                },
                                child: const Text("Sign in")),
                            const SizedBox(
                              height: 175,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ));
  }
}
