
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
                  child: Container(
                    height:  my_height*18.5/100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(5.0) //
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1,
                        ),
                      ],),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: my_height*1.68/100,bottom: my_height*1.68/100,left:my_width*2.60/100 ,right: my_width*2.60/100),
                          child:  Container(
                            alignment: Alignment.topCenter,
                            width: my_width*7.81/100,
                            child: InkWell(
                              child: Image.asset('images/img.png',fit: BoxFit.fill,),
                              onTap: (){},
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:  my_height*1.68/100,bottom: my_height*1.68/100),
                          child: Container(
                            width:  my_width*65.10/100,
                            alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child:Text("start to fill your trackers rigth now!",style: TextStyle(color: Colors.black87),textAlign: TextAlign.start,),
                                  alignment: Alignment.centerLeft,
                                ),
                                Expanded(
                                  child:Padding(
                                    padding: EdgeInsets.only(top: my_height*.84/100),
                                    child: Text("Learn ipsum dolor sit,amet consectetur adipiscing lorem ipsum dolor sit amet",style: TextStyle(color: Colors.black87.withOpacity(.2)),),
                                  ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: my_height*.84/100,right: my_width*2.60/100),
                            child:  Container(
                              alignment: Alignment.topLeft,
                              width: my_width*7.81/100,
                              child: IconButton(
                                alignment: AlignmentDirectional.topStart,
                                icon: Icon(Icons.cancel),
                                onPressed: (){

                                },
                              )
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:  my_height*3.37/100),
                  child: Container(
                      height:  my_height*8.44/100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: my_height*.84/100,bottom:my_height*.84/100,right: my_width*3.90/100,left: my_width*2.60/100),
                            child:  Container(
                                alignment: Alignment.center,
                                width: my_width*7.81/100,
                                 child: IconButton(
                                  alignment: AlignmentDirectional.center,
                                  icon: Icon(Icons.apps),

                                )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: my_height*1.68/100,bottom: my_height*1.68/100),
                            child: Container(
                              width:  my_width*65.10/100,
                              alignment: Alignment.center,
                              child:  Container(


                                child:Text("Steps Counter",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
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
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:  my_height*3.37/100),
                  child: Container(
                      height:  my_height*8.44/100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: my_height*.84/100,bottom:my_height*.84/100,right: my_width*3.90/100,left: my_width*2.60/100),
                            child:  Container(
                                alignment: Alignment.topLeft,
                                width: my_width*7.81/100,
                                child: IconButton(
                                  alignment: AlignmentDirectional.center,
                                  icon: Icon(Icons.apps),

                                )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: my_height*1.68/100,bottom: my_height*1.68/100),
                            child: Container(
                              width:  my_width*65.10/100,
                              alignment: Alignment.center,
                              child:  Container(


                                child:Text("Your Medications",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
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
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:  my_height*3.37/100),
                  child: Container(
                      height:  my_height*8.44/100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: my_height*.84/100,bottom:my_height*.84/100,right: my_width*3.90/100,left: my_width*2.60/100),
                            child:  Container(
                                alignment: Alignment.topLeft,
                                width: my_width*7.81/100,
                                child: IconButton(
                                  alignment: AlignmentDirectional.center,
                                  icon: Icon(Icons.apps),

                                )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: my_height*1.68/100,bottom: my_height*1.68/100),
                            child: Container(
                              width:  my_width*65.10/100,
                              alignment: Alignment.center,
                              child:  Container(


                                child:Text("BMI Calculator",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
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
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

}