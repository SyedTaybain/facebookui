import 'package:facebook_ui/models/video_model.dart';
import 'package:facebook_ui/pages/video_player.dart';
import 'package:flutter/material.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class video extends StatefulWidget {

  @override
  _videoState createState() => _videoState();
}

class _videoState extends State<video> {
  bool IsSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Videos",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300]
                    ),
                    margin: EdgeInsets.only(right: 10),
                    child: Tooltip(
                      message: "Video play automatically",
                      child: Switch(
                        activeColor: Colors.blue,
                          value: IsSwitched,
                          onChanged: (value){
                            setState(() {
                              IsSwitched = value;
                            });
                          }),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(color: Colors.black87,),



        Row(
          children: [
            IconButton(
                iconSize: 50,
                onPressed: (){},
                icon: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/1.jpg"),
                )),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Taybain",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  Wrap(
                    spacing: 10,
                    children: [
                      Text("just now",style: TextStyle(fontSize: 12),),
                      Icon(Icons.public_outlined,size: 16,),
                    ],
                  )
                ],
              ),
            ),

            IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_horiz_outlined))
          ],
        ),
        
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(children: [

              IconButton(onPressed: (){},
                  icon: Icon(Icons.thumb_up_alt_outlined)),
              Transform.translate(offset: Offset(-10,0),
                child: Text("1.4k"),),
              // Text("1.4k")
            ],),

            Row(
              children: [
                Row(children: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.mode_comment_outlined)),
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
                  onTap: (){},
                  child: Image(
                      height: 23,
                      width: 23,
                      image: AssetImage("assets/images/share.png",)
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text("600")
              ],

            ),

          ],
        ),

      ],
    );
  }
}
