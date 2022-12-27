import 'package:angle_on/device/desktop.dart';
import 'package:angle_on/device/mobile.dart';
import 'package:angle_on/screens/discover_page.dart';
import 'package:angle_on/screens/home_page.dart';
import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  var deviceType = "Mobile";
  @override
  detectDevice(width) {
    if (width <= 450)
      return "Mobile";
    else if (width <= 800)
      return "Tablet";
    else if (width <= 1450)
      return "Laptop";
    else
      return "Large";
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    deviceType = detectDevice(width);

    switch (deviceType) {
      case ("Mobile"):
        return MyBottomNavigationBar();
      case ("Tablet"):
        return MyBottomNavigationBar();
      case ("Laptop"):
        return Desktop();
      default:
        return MyBottomNavigationBar();
    }
  }
}
