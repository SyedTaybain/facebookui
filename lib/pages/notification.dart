import 'package:facebook_ui/models/notification_model.dart';
import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notifications",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300]
                    ),
                    margin: EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.search_outlined,
                        color: Colors.black,),


                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(
          color: Colors.black87,
        ),

        Expanded(
            child: ListView.builder(
              itemCount: notificationData.length,
              itemBuilder: (context, i)=> Column(
                children: [

                  ListTile(
                     leading:Text.rich(WidgetSpan(
                       child: CircleAvatar(
                         backgroundImage:AssetImage(notificationData[i].avatarImage),
                           radius: 28,
                       )
                     )),

                     // CircleAvatar(
                     //   backgroundImage: AssetImage(notificationData[i].avatarImage),
                     //   radius: 30 ,
                     // ),

                    title: Text.rich(TextSpan(
                      children: [
                        TextSpan(text: notificationData[i].name+" ",style:TextStyle(fontWeight: FontWeight.bold), ),
                        TextSpan(text: notificationData[i].des,style:TextStyle(fontSize: 15), ),

                      ]
                    )),
                    subtitle: Text(notificationData[i].time),

                    trailing: Icon(Icons.more_horiz_outlined)
                  ),
                ],
              ),
            ))



        // Row(
        //   children: [
        //     IconButton(
        //       onPressed: (){},
        //       iconSize: 45,
        //       icon: CircleAvatar(
        //         radius: 60,
        //         backgroundImage: AssetImage("assets/images/sanji.jpg"),
        //       ),
        //     ),
        //     Text("Monkey D Luffy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        //
        //     MaterialButton(
        //       color: Colors.lightBlue,
        //       shape: StadiumBorder(),
        //       onPressed:(){} ,
        //       child: Text("Add Friend", style: TextStyle(color: Colors.white,),),
        //     ) ,
        //     MaterialButton(
        //       color: Colors.blue,
        //       shape: StadiumBorder(),
        //       onPressed:(){} ,
        //       child: Text("Delete", style: TextStyle(color: Colors.white,),),
        //     )
        //     //
        //   ],
        // )
      ],
    );
  }
}
