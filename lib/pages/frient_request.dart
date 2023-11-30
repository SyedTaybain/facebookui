import 'package:facebook_ui/models/friend_model.dart';
import 'package:flutter/material.dart';

class friendRequest extends StatefulWidget {
  const friendRequest({Key? key}) : super(key: key);

  @override
  _friendRequestState createState() => _friendRequestState();
}

class _friendRequestState extends State<friendRequest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Friends",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
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
                        icon: Icon(Icons.person,color: Colors.green,),


                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300]
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.people,color: Colors.red,))
                      ],
                    ),
                  )
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
              itemCount: friendData.length,
              itemBuilder: (context, i)=> Column(
                children: [
                  
                  ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(friendData[i].avatarImage,),
                ),
                title: Text(friendData[i].name),
                trailing: Wrap(
                  spacing: 2,
                  children: [
                    Transform.translate(offset: Offset(10,0),
                    child: MaterialButton(
                      height: 30,
                      color: Colors.lightBlue,
                      shape: StadiumBorder(),
                      onPressed:(){} ,
                      child: Text("Add Friend", style: TextStyle(color: Colors.white,),),
                    ) ,
                    ),

                    Transform.translate(offset: Offset(12,0),
                        child: MaterialButton(
                      height: 30,
                      color: Colors.lightBlue,
                      shape: StadiumBorder(),
                      onPressed:(){} ,
                      child: Text("Delete", style: TextStyle(color: Colors.white,),
                      ),
                    ), ) ,
                  ],
                ),
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































