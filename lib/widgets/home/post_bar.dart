import 'package:facebook_ui/pages/Profile.dart';
import 'package:flutter/material.dart';

class postBar extends StatefulWidget {

  @override
  _postBarState createState() => _postBarState();
}

class _postBarState extends State<postBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 7),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           IconButton(
             onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Material(
               child: Container(
                 margin: EdgeInsets.only(top: 25),
                 child: profile(),
               ),
             ),  )
             );
           },
             iconSize: 50,
           icon: CircleAvatar(
             radius: 90,
             backgroundColor: Colors.pink,
             backgroundImage: AssetImage("assets/images/acs.jpg"),
           ),
           ),



           Container(
             margin: EdgeInsets.only(top: 15),
             width: 205,
             height: 40,
             child: TextFormField(
               textAlign: TextAlign.center,

               decoration: InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(50),
                 ),
                 hintText:"what's on your mind",



               ),
             ),

           ),



           // TextButton(onPressed: (){},
           //     child: Text("What's on your mind ?"),
           // ),
           Container(
             height: 60,
             child: VerticalDivider(color: Colors.black,),),
           Column(
             children: [
               IconButton(onPressed: (){},
                   icon: Icon(Icons.photo_album_outlined)),
               Text("Photo")
             ],
           )
         ],
       )
    );
  }
}
