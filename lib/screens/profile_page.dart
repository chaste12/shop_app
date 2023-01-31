import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/componets/products.dart';
import 'package:shop_app/screens/loginpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                        "assets/images/christopher-campbell-rDEOVtE7vOs-unsplash.jpg"),
                  ),
                ),
              ),
              Text(
                "Jane Doe",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                "User Badge: 1234567789",
                style: TextStyle(
                    color: Colors.green[200],
                    fontWeight: FontWeight.normal,
                    fontSize: 24),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                child: Divider(
                  height: 10,
                  color: Colors.white,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/cog.svg",
                        width: 30,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Settings",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/log-out.svg",
                            width: 30,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "LogOut",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
