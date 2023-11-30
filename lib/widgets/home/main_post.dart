import 'package:facebook_ui/models/main_post_model.dart';
import 'package:flutter/material.dart';


class post extends StatefulWidget {

  @override
  _postState createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(var i=0; i<postData.length;i++)...[
          Row(
            children: [
              IconButton(
                  iconSize: 50,
                  onPressed: postData[i].avatarOnPressed,
                  icon: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(postData[i].avatarImage),
                  )),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(postData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                    Wrap(
                      spacing: 10,
                      children: [
                        Text(postData[i].time,style: TextStyle(fontSize: 12),),
                        Icon(Icons.public_outlined,size: 16,),
                      ],
                    )
                  ],
                ),
              ),

              IconButton(
                  onPressed: postData[i].moreOnPressed,
                  icon: Icon(Icons.more_horiz_outlined))
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(postData[i].title),
                Image(image: AssetImage(postData[i].postImage)),

              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  Row(children: [

                    IconButton(onPressed: postData[i].likeOnPressed,
                        icon: Icon(Icons.thumb_up_alt_outlined)),
                    Transform.translate(offset: Offset(-10,0),
                      child: Text("1.4k"),),
                    // Text("1.4k")
                  ],),

              Row(
                children: [
                  Row(children: [
                    IconButton(onPressed: postData[i].commentOnPressed, icon: Icon(Icons.mode_comment_outlined)),
                    Transform.translate(offset: Offset(-10,0),
                      child: Text("3k"),)
                    //Text("3k")
                  ],)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  GestureDetector(
                    onTap: postData[i].shareOnPressed,
                    child: Image(
                        height: 23,
                        width: 23,
                        image: AssetImage("assets/images/share.png",)
                    ),
                  ),
                  // SizedBox(
                  //   width: 3,
                  // ),
                  Transform.translate(offset: Offset(4, 0),
                  child: Text("600"),
                  )
                ],

              ),

            ],
          ),
              Divider(height: 10,color: Colors.black87,),
        ]


        ]

    );
  }
}
