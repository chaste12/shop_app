import 'package:flutter/material.dart';
import 'package:shop_app/screens/create_account.dart';
import 'package:shop_app/screens/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
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
                      child: const TextField(
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Username",
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
                        child: const TextField(
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          color: Colors.green[700],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        // ignore: prefer_const_constructors
                        child: Center(
                          child: const Text(
                            "Sign in",
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Text(
                      "Forgot your password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.green[700],
                        fontSize: 14,
                      ),
                    ),
                  ),
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
                              "Sign in with google",
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
                              "Sign in with facebook",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccount()));
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
                            "Create an account",
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
}
