import 'package:angle_on/screens/discover_page.dart';
import 'package:angle_on/screens/home_page.dart';
import 'package:angle_on/screens/my_picks_page.dart';
import 'package:angle_on/screens/profile_page.dart';
import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  int pageController = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 25,
            ),
            Text(
              "Angle",
              style: TextStyle(
                  color: AppConstants.secondAngleOnColor, fontSize: 20),
            ),
            SizedBox(width: 6),
            Text(
              "O",
              style: TextStyle(
                  color: AppConstants.secondAngleOnColor,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      color: AppConstants.secondAngleOnColor,
                      blurRadius: 30,
                    )
                  ]),
            ),
            Text(
              "N",
              style: TextStyle(
                  color: AppConstants.secondAngleOnColor, fontSize: 20),
            ),
          ],
        ),
        title: Row(
          children: [
            TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStatePropertyAll<Color>(Colors.transparent)),
                onPressed: () {
                  pageController = 0;
                  setState(() {});
                },
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
            TextButton(
                onPressed: () {
                  pageController = 1;
                  setState(() {});
                },
                child: Text(
                  "Discover",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
            TextButton(
                onPressed: () {
                  pageController = 2;
                  setState(() {});
                },
                child: Text(
                  "My Picks",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: InkWell(
              onTap: () {
                pageController = 3;
                setState(() {});
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/alperen.jpeg"),
              ),
            ),
          )
        ],
      ),
      body: IndexedStack(
        index: pageController,
        children: [
          HomePage(),
          DiscoverPage(),
          MyPicksPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
