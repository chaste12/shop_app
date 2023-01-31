import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shop_app/screens/loginpage.dart';
import 'package:http/http.dart' as http;

class CreateAccount extends StatefulWidget {
  CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    child: Image.asset('assets/images/Xbox-Logo.wine.png'),
                    width: 300,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[700],
                    ),
                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: _username,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your username",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey[700],
                      ),
                      // ignore: prefer_const_constructors
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter email",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey[700],
                      ),
                      // ignore: prefer_const_constructors
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: _password,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter password",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          RegistrationUser();
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                      visible: visible,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 30),
                          child: CircularProgressIndicator())),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/google-logo-9825.png',
                              width: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Sign up with google",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/f_logo_RGB-Blue_1024.png',
                              width: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Sign up with facebook",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                  Padding(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                          color: Colors.green[700],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        // ignore: prefer_const_constructors
                        child: Center(
                          child: const Text(
                            "Log in",
                            textAlign: TextAlign.center,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> RegistrationUser() async {
    var url = Uri.parse('http://127.0.0.1//shop/api/users/register.php');

    // Map mapdate = {
    //   'username': _username.text,
    //   'email': _email.text,
    //   'password': _password.text
    // };

    http.Response response = await http.post(url, body: {
      'username': _username.text,
      'email': _email.text,
      'password': _password.text
    });

    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      print("failed");
    }
  }
}
