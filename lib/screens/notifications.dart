import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0),
        child: SizedBox(
          child: Center(
            child: Column(
              children: [
                SvgPicture.asset("assets/icons/notifications-off-sharp.svg",
                    width: 60, color: Colors.grey[500]),
                Text(
                  "No notifications",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
