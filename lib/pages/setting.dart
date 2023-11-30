

import 'package:facebook_ui/models/setting_model.dart';
import 'package:flutter/material.dart';
import 'Profile.dart';

class setting extends StatefulWidget {

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Menu",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                  Container(
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(Radius.circular(50)),
                      shape: BoxShape.circle,
                      color: Colors.grey[300]
                    ),
                    child: IconButton(
                      onPressed:(){},
                      icon: Icon(Icons.search_outlined),

                    ),
                  ),
                ],
              ),
            ),
           // Divider(color: Colors.black87,),


            Container(
              //margin: EdgeInsets.symmetric(horizontal: 15,vertical:15),
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 20),
              padding: EdgeInsets.zero,
              height: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
              color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                 BoxShadow(
                   color:Colors.grey,
                   offset: Offset(0.5, 1),
                   blurRadius: 6,
                 )
                ],
              ),
              child: ListTile(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Material(
                  child: Container(
                    margin: EdgeInsets.only(top: 25),
                    child: profile(),
                  ),
                ))),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/1.jpg"),
                  radius: 35,
                ),
                title: Text("Portgas D. Ace",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ) ,

            ),


                Expanded(
                  child: GridView.count(
                    shrinkWrap: true,
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    childAspectRatio: (1.2/0.5),
                        children: [

                          for(var i=0; i<settingData.length; i++)...[


                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                            //  height: 80,
                            //  width  :150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(1,1),
                                        blurRadius: 5
                                    ),
                                  ]
                              ),
                              child: InkWell(
                                onTap: ()=>print("On tap is working"),
                                child: Container(
                                  margin: EdgeInsets.only(top: 10,left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Transform.translate(offset: Offset(8,0),
                                          child:settingData[i].image

                                      ),

                                      Transform.translate(offset: Offset(1,6),
                                        child: Text(settingData[i].text,style: TextStyle(fontWeight: FontWeight.bold),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                          // ListView(
                          //   children: [
                          //     Container(
                          //       margin: EdgeInsets.only(left: 150),
                           //       child: Text("see more"),
                          //     )
                          //
                          //   ],
                          // )

                        ],
                      ),
                  /////////////////////////////////////
                ),
            //Transform.translate(offset: Offset(1,1),
             Container(
              height: 40,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.all(Radius.circular(16))
              ),
              child: TextButton(
                onPressed: (){},
                child: Text("Log Out",style: TextStyle(color:Colors.black),),
              ),
            ),



            










          ],


    );
  }
}























