import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/screens/cart.dart';
import 'package:shop_app/screens/mainpage.dart';
import 'package:shop_app/screens/notifications.dart';
import 'package:shop_app/screens/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    Notifications(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/images/Xbox-Logo.wine.png",
          width: 180,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                },
                child: const Icon(Icons.shopping_cart_outlined,
                    color: Colors.white)),
          ),
        ],
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              width: 30,
              color: Colors.green[700],
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/notifications-outline.svg",
              width: 30,
              color: Colors.white,
            ),
            label: "explore",
          ),
          const BottomNavigationBarItem(
            icon: SizedBox(
              width: 35,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/christopher-campbell-rDEOVtE7vOs-unsplash.jpg"),
              ),
            ),
            label: "settings",
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[700],
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/Xbox-Store-1.jpg"),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.all_inclusive, color: Colors.white),
                title: Text(
                  'All',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.gamepad, color: Colors.white),
                title: Text(
                  'Consoles',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.headset, color: Colors.white),
                title: Text(
                  'Accessories',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
