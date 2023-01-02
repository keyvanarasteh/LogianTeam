import 'package:angle_on/constants/app_constants.dart';
import 'package:flutter/material.dart';

class MyPicksPage extends StatefulWidget {
  const MyPicksPage({Key? key}) : super(key: key);

  @override
  State<MyPicksPage> createState() => _MyPicksPageState();
}

class _MyPicksPageState extends State<MyPicksPage> {
  List<bool> _isExpandedd = [false,false,false,false];
  List<List<String>> starr = [
    ["Matthew McConaughey,","Anne Hathaway,","Jessica Chastain,","Michael Caine"],
    ["Brad Pitt,","Morgan Freeman,","Gwyneth Paltrow,","Kevin Spacey"]     ,
    ["Dr. Eleanor Ann,", "Jodie Foster,", "Matthew McConaughey,", "James Woods,", "Tom Skerritt"],
    ["Şahan Gökbakar"],
   ];

  List<String> director = [
      "Christopher Nolan",
      "David Fincher",
     "Robert Zemeckis",
     "Togan Gökbakar",
  ];
  List<String> description = [
    "Yıldızlararası, Christopher Nolan tarafından yönetilen epik bilimkurgu türündeki, 2014 yapımı ABD filmi.",
    "Filmde Hristiyanlık'ın 7 ölümcül günahını işleyenleri kendi vahşi yöntemleriyle öldüren bir seri katili ve onun peşindeki iki polis dedektifinin çabalarını konu alan bir film",
    "Mesaj, Carl Sagan'ın aynı adlı romanından beyaz perdeye uyarlanan 1997 yapımı bir bilimkurgu filmidir.",
    "Recep, çocukların antrenman yaptığı sahanın satıldığını duyunca, mahallede tek boş alan olan bu arsayı kendisi almaya karar verir.",
  ];
  List<String> title = [
    "Interstellar" ,
    "Seven",
    "Contact",
    "Recep İvedik 4",
  ];
  List<String> movieImage = [
    "assets/interstellar.png",
    "assets/seven.png",
    "assets/contact.png",
    "assets/recepivedik4.png",];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         ExpansionPanelList(
           expansionCallback:(panelIndex, isExpanded) {
             for (int i = 0;i < movieImage.length;i++)
               {
                 _isExpandedd[i] = false;
               }
             _isExpandedd[panelIndex] = !isExpanded;
             setState(() {});
           },
           children: [
             ExpansionPanel(
               canTapOnHeader: true,
               isExpanded: _isExpandedd[0],
                 backgroundColor: AppConstants.primaryAngleOnColor,
                 headerBuilder: (context, isExpanded) {
                 return Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                       child: CircleAvatar(
                         backgroundImage: AssetImage(movieImage[0]),
                         radius: _isExpandedd[0] ? 75 : 35,
                       ),
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(title[0],style: TextStyle(color: Colors.white),),
                         Text("Director : ${director[0]}",style: TextStyle(color: Colors.white),),
                       ],
                     ),
                     SizedBox(width: 50,),
                     Container(
                       width:300,
                         child: Text("Oyuncular : ${starr[0].join()}",style: TextStyle(color: Colors.white))),
                   ],
                 );
                 },
                 body: Column(
                   children: [
                     Text("Açıklama: ${description[0]}",style: TextStyle(color: Colors.white)),
                   ],
                 )
             ),
             ExpansionPanel(
                 canTapOnHeader: true,
                 isExpanded: _isExpandedd[1],
                 backgroundColor: AppConstants.primaryAngleOnColor,
                 headerBuilder: (context, isExpanded) {
                   return Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                         child: CircleAvatar(
                           backgroundImage: AssetImage(movieImage[1]),
                           radius: _isExpandedd[1] ? 75 : 35,
                         ),
                       ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(title[1],style: TextStyle(color: Colors.white),),
                           Text("Director : ${director[1]}",style: TextStyle(color: Colors.white),),
                         ],
                       ),
                       SizedBox(width: 50,),
                       Container(
                         width:250,
                           child: Text("Oyuncular : ${starr[1].join()}",style: TextStyle(color: Colors.white))),
                     ],
                   );
                 },
                 body: Column(
                   children: [
                     Text("Açıklama: ${description[1]}",style: TextStyle(color: Colors.white)),
                   ],
                 )
             ),
             ExpansionPanel(
                 canTapOnHeader: true,
                 isExpanded: _isExpandedd[2],
                 backgroundColor: AppConstants.primaryAngleOnColor,
                 headerBuilder: (context, isExpanded) {
                   return Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                         child: CircleAvatar(
                           backgroundImage: AssetImage(movieImage[2]),
                           radius: _isExpandedd[2] ? 75 : 35,
                         ),
                       ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(title[2],style: TextStyle(color: Colors.white),),
                           Text("Director : ${director[2]}",style: TextStyle(color: Colors.white),),
                         ],
                       ),
                       SizedBox(width: 50,),
                       SizedBox(
                         width:250,
                           child: Text("Oyuncular : ${starr[2].join()}",style: TextStyle(color: Colors.white))),
                     ],
                   );
                 },
                 body: Column(
                   children: [
                     Text("Açıklama: ${description[2]}",style: TextStyle(color: Colors.white)),
                   ],
                 )
             ),
             ExpansionPanel(
                 canTapOnHeader: true,
                 isExpanded: _isExpandedd[3],
                 backgroundColor: AppConstants.primaryAngleOnColor,
                 headerBuilder: (context, isExpanded) {
                   return Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                         child: CircleAvatar(
                           backgroundImage: AssetImage(movieImage[3]),
                           radius: _isExpandedd[3] ? 75 : 35,
                         ),
                       ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(title[3],style: TextStyle(color: Colors.white),),
                           Text("Director : ${director[3]}",style: TextStyle(color: Colors.white),),
                         ],
                       ),
                       SizedBox(width: 50,),
                       Container(
                         width:250,
                           child: Text("Oyuncular : ${starr[3].join()}",style: TextStyle(color: Colors.white))),
                     ],
                   );
                 },
                 body: Column(
                   children: [
                     Text("Açıklama: ${description[3]}",style: TextStyle(color: Colors.white)),
                   ],
                 )
             ),
           ],
         )
        ],
      ),
    );
  }
}
