import 'package:angle_on/class/bottom_movie_card.dart';
import 'package:flutter/material.dart';

class BottomCardDesign extends StatefulWidget {
  BottomCard item;
  BottomCardDesign({Key? key,required this.item}) : super(key: key);

  @override
  State<BottomCardDesign> createState() => _BottomCardDesignState();
}

class _BottomCardDesignState extends State<BottomCardDesign> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: width < 450 ? 100 : width < 800 ? 175 : 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(image: AssetImage(widget.item.bottomImage),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
