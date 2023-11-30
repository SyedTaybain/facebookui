import 'package:facebook_ui/models/story_model.dart';
import 'package:flutter/material.dart';


class storyBar extends StatefulWidget {

  @override
  _storyBarState createState() => _storyBarState();
}

class _storyBarState extends State<storyBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      margin: EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10,
          children: [
            Container(
              height: 190,
              width: 110,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: (){print("gesture is working");},

                    child: Column(
                      children: [
                       Container(
                         height: 130,
                         width: 110,
                         child: ClipRRect(
                           child: Image(image: AssetImage("assets/images/sanji.jpg"),
                             fit: BoxFit.cover,
                           ),
                           borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(20),
                             topRight: Radius.circular(20),
                           ),
                         ),
                       ),


                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 35,
                    left: 35,
                    child: InkWell(
                      onTap: ()=>{print("icon click is working")},
                     child: Icon(Icons.add_circle_rounded,color: Colors.blue,size: 40,),
                    )

                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 150),
                    child: TextButton(
                        onPressed: ()=>{print("add to 'story' is working")},
                        child: Text("Add to Story",style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),)),
                  ),


                ],

              ),
            ),


            for(var i=0; i<storyData.length; i++) ... [
              Container(
                height: 190,
                width: 110,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: storyData[i].onTap,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          // height: 190,
                          // width: 110,
                          image: AssetImage(storyData[i].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 5,
                      child: Text(storyData[i].userName,
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,

                      ),),
                    )

                  ],
                ),
              )
            ]
            


          ],
        ),
      ),
      );
  }
}























