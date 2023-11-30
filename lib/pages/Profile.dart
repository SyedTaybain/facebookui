import 'package:facebook_ui/main.dart';
import 'package:facebook_ui/models/profile_info.dart';
import 'package:facebook_ui/widgets/home/main_post.dart';
import 'package:facebook_ui/widgets/home/menu_bar.dart';
import 'package:facebook_ui/widgets/home/post_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                  children:[
                    TextSpan(text: "Portgas ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    TextSpan(text: "D ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    TextSpan(text: "ace",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  ]
                )),
                // Text("Portgas D. Ace",
                //   style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),



                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300],),
                  child: IconButton(
                    autofocus: false,
                    iconSize: 30,
                    onPressed: (){},
                    icon: Icon(Icons.person,color: Colors.black,),),)

            ],),
          ),
          Container(

            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  child: Image(image: AssetImage("assets/images/1.jpg"),
                  ),
                ),


               Container(

                 child: Transform.translate(
                   offset: Offset(280,130),
                   child: Container(
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.grey[350],
                     ),
                     child: IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.camera_alt),color: Colors.black,),
                   ),
                 ),
               ),




               Transform.translate(offset:Offset(90,100),
                 child: IconButton(
                   iconSize: 150,
                   onPressed: (){},
                   icon: CircleAvatar(
                     backgroundImage: AssetImage("assets/images/acs.jpg"),
                     radius: 70,

                   child: Transform.translate(offset: Offset(70, 60),
                     child: Container(
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.grey[350],
                       ),
                       child: IconButton(
                           onPressed: (){},
                           icon: Icon(Icons.camera_alt,)),
                     ),),
                 ),
                 ),
               ),

              ],
            ),

          ),
               Padding(
                   padding: EdgeInsets.only(top: 75),
                   child: Text("Portgas D. Ace",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

          Padding(
            padding:  EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: (){print("on tap is working");},
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Icon(Icons.add_circle_rounded,color: Colors.white,),
                    Text("Add to story",style: TextStyle(color: Colors.white),),
                  ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: (){print("on tap is working");},
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.edit,color: Colors.black,),
                      Text("Edit Profile",style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: (){print("on tap is working");},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.more_horiz_outlined,color: Colors.black,),
                    ],
                  ),
                ),
              ),

            ],),
          ),

          Divider(color: Colors.black,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              margin: EdgeInsets.only(left: 5,bottom: 5),
              child: InkWell(
                onTap: (){print("yes it is working");},
                child: Image(
                  width: 20,
                  height: 20,
                  color: Colors.grey[600],
                  image: AssetImage("assets/images/priefcase.png",),
                ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text.rich(TextSpan(
                children: [
                  TextSpan(text:"Working on a gold that no  at Laugh tale, \n",style: TextStyle(fontSize: 16), ),
                  TextSpan(text:"One Piece ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold), ),
                ]
              )),
            )

          ],),

          for(var i=0; i<profileInfoData.length;i++)...[
            Container(
              //margin: EdgeInsets.only(left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: profileInfoData[i].avatarOnPressed,
                    icon:profileInfoData[i].icon ,
                    iconSize: 30,
                    color: Colors.grey[600],
                  ),

                  Container(
                    margin: EdgeInsets.only(left:20),
                    child: Text.rich(TextSpan(
                        children: [
                          TextSpan(text: profileInfoData[i].text1+"  " ,style: TextStyle(fontSize: 16),),
                          TextSpan(text: profileInfoData[i].text2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ]
                    )
                    ),
                  ),
                ],),
            ),
          ],
          Container(
            height: 40,
            width: 300,
            alignment: Alignment.center,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue[50],
            ),
            child: TextButton(
              onPressed: (){},
              child: Text("Edit public Details",style: TextStyle(color: Colors.blue[700],),),
            )
          ),
          Divider(color: Colors.black87,),
          postBar(),
          Divider(height: 10,color: Colors.black87,),
          menuBar(),
          Divider(height: 10,color: Colors.black87,),
          post(),



        ],
      ),
    );
  }
}








