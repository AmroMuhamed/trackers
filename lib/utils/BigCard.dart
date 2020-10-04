
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var my_height =
        MediaQuery.of(context).size.height;
    var my_width =
        MediaQuery.of(context).size.width;
    return  Container(
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
    );
  }
}