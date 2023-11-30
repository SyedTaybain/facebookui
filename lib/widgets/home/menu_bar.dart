import 'package:flutter/material.dart';


class menuBar extends StatefulWidget {

  @override
  _menuBarState createState() => _menuBarState();
}

class _menuBarState extends State<menuBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            TextButton(onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.post_add_outlined, size: 30,color: Colors.cyan,),
                    Text("Text",style: TextStyle(fontSize: 15,),)
                  ],
                ))
          ],
        ),
        Container(height: 40, child: VerticalDivider(color: Colors.black87,),),


        Row(
          children: [
            TextButton(onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.video_call_outlined, size: 30,color: Colors.redAccent,),
                    Text("Live Video",style: TextStyle(fontSize: 15,),)
                  ],
                ))
          ],
        ),
        Container(height: 40, child: VerticalDivider(color: Colors.black87,),),


        Row(
          children: [
            TextButton(onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 30,color: Colors.red,),
                    Text("Location",style: TextStyle(fontSize: 15,),)
                  ],
                ))
          ],
        ),
      ],
    );
  }
}
