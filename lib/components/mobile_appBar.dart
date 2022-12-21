import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Container(
            decoration: BoxDecoration(
                color: AppConstants.primaryAngleOnColor,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black38,width: 0.3),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5,
                      spreadRadius: 0.5,
                      offset: Offset(0, 3)
                  )
                ]
            ),
            child: IconButton(
                iconSize: 25,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: (){},
                icon: Icon(Icons.cast_connected,color: Colors.white,)
            ),
          ),
        ),
      ],
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Angle",
            style: TextStyle(
                color: AppConstants.secondAngleOnColor
            ),
          ),
          SizedBox(width: 6),
          Text("O",
            style: TextStyle(
                color: AppConstants.secondAngleOnColor,
                shadows: [
                  Shadow(color: AppConstants.secondAngleOnColor,blurRadius: 30,)
                ]
            ),
          ),
          Text(
            "N",
            style: TextStyle(
                color: AppConstants.secondAngleOnColor
            ),
          ),

        ],
      ),
    );
  }
}
