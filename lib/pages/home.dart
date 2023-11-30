
import 'package:facebook_ui/widgets/home/main_post.dart';
import 'package:facebook_ui/widgets/home/menu_bar.dart';
import 'package:facebook_ui/widgets/home/post_bar.dart';
import 'package:facebook_ui/widgets/home/story_bar.dart';
import 'package:flutter/material.dart';


class facebookHome extends StatefulWidget {
  const facebookHome({Key? key}) : super(key: key);

  @override
  _facebookHomeState createState() => _facebookHomeState();
}

class _facebookHomeState extends State<facebookHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          postBar(),
          Divider(height: 10,color: Colors.black87,),
          menuBar(),
          Divider(height: 10,color: Colors.black87,),
          storyBar(),
          Divider(height: 10,color: Colors.black87,),
          post(),

        ],
      ),
    );
  }
}
