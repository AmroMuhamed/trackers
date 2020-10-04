import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tracks/utils/card.dart';

class CardListView extends StatefulWidget{

  CardListViewState createState()=>CardListViewState();
}

class CardListViewState extends State<CardListView>
{
  var title=['Steps Counter','Your Medications','BMI Calculator'];
  @override
  Widget build(BuildContext context) {

    var my_height =
        MediaQuery.of(context).size.height;
    var my_width =
        MediaQuery.of(context).size.width;
    // TODO: implement build
    return  ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: EdgeInsets.only(top: my_height*4.3/100),
            child: Mycard(title[index]),
          );
        }
    ) ;
  }

}
class Mycard extends StatelessWidget {

  var title;

  Mycard(this.title);

  @override
  Widget build(BuildContext context) {

    var my_height =
        MediaQuery.of(context).size.height;
    var my_width =
        MediaQuery.of(context).size.width;
    return Container(
        height:  my_height*8.44/100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: my_height*.84/100,bottom:my_height*.84/100,right: my_width*3.90/100,left: my_width*2.60/100),
              child:  Container(
                  alignment: Alignment.topLeft,
                  width: my_width*7.81/100,
                  child: Align(
                    alignment: Alignment.center,

                    child:  Icon(Icons.apps

                    ),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: my_height*1.68/100,bottom: my_height*1.68/100),
              child: Container(
                width:  my_width*65.10/100,
                alignment: Alignment.center,
                child:  Container(
                  child:Text(title,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: my_height*.84/100,right: my_width*2.60/100),
                child:  Container(
                    alignment: Alignment.center,
                    width: my_width*7.81/100,
                    child: IconButton(
                      alignment: AlignmentDirectional.topStart,
                      icon: Icon(Icons.add_circle,color: Colors.blueAccent,),
                      onPressed: (){

                      },
                    )
                ),
              ),
            ),


          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(8.0) //
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],)
    );
  }
}