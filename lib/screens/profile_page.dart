import 'package:angle_on/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: LayoutBuilder(builder: (context, constraints) {
              return constraints.maxHeight < 100
                  ? SizedBox()
                  : SizedBox(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.0),
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage("assets/alperen.jpeg"),
                                ),
                              ),
                              Text("Alperen Müftüoğlu",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          )
                        ],
                      ),
                    );
            }),
            centerTitle: true,
            title: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Angle ",
                  style: TextStyle(
                      color: AppConstants.secondAngleOnColor, fontSize: 20),
                ),
                TextSpan(
                  text: "O",
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
                TextSpan(
                  text: "N",
                  style: TextStyle(
                      color: AppConstants.secondAngleOnColor, fontSize: 20),
                ),
              ]),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                onTap: () {
                  setState(() {
                    ExpansionPanel(
                        canTapOnHeader: true,
                        isExpanded: true,
                        headerBuilder: (context, isExpanded) {
                          return ListTile(
                            title: Text("Açıklama"),
                          );
                        },
                        body: Column(
                          children: [Text("Alperen")],
                        ));
                  });
                },
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Mail:", style: TextStyle(color: Colors.white)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
