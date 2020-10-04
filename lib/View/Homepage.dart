
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tracks/utils/BigCard.dart';
import 'package:tracks/utils/card.dart';

class HomePage extends StatefulWidget{

  HomePageState createState()=>HomePageState();
}

class HomePageState extends State<HomePage>
{
  int track=5;

  @override
  Widget build(BuildContext context) {
    var my_height =
        MediaQuery.of(context).size.height;
    var my_width =
        MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey.withOpacity(.3),
          ),
          Padding(
            padding: EdgeInsets.only(left: my_width*5.20/100,right: my_width*5.20/100,top: my_height*5.06/100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child:
                  Text("Trackers (${track})",style: TextStyle(color: Colors.black87),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: my_height*3.37/100),
                  child: BigCard(),
                ),
                Padding(
                  padding: EdgeInsets.only(top:  my_height*3.37/100),
                  child: Container(
                    height:  my_height*51/100,
                    alignment: Alignment.center,
                        child:CardListView()
                  )
                ), 
              ],
            ),
          ),
        ],
      )
    );
  }

}