import 'package:angle_on/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                  leading: Icon(Icons.mail, color: Colors.white),
                  title: Text("Mail: alperen@gmail.com",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.white),
                  title: Text("Kullanıcı adı: Alpemi",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.download, color: Colors.white),
                  title:
                      Text("İndirilenler", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.wifi, color: Colors.white),
                  title: Text("Hücresel veri kullanımı",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.notifications, color: Colors.white),
                  title:
                      Text("Bildirimler", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.speed, color: Colors.white),
                  title: Text("internet hız testi",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.security, color: Colors.white),
                  title: Text("Gizlilik", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.verified_sharp, color: Colors.white),
                  title:
                      Text("Version: 1.0", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.file_copy, color: Colors.white),
                  title: Text("Çerez Tercihleri",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.text_snippet, color: Colors.white),
                  title: Text("Kullanım koşulları",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading:
                      Icon(Icons.signal_cellular_alt_sharp, color: Colors.white),
                  title: Text("Ağı kontrol et",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading:
                  Icon(Icons.exit_to_app, color: Colors.white),
                  title: Text("Çıkış yap",
                      style: TextStyle(color: Colors.white)),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
