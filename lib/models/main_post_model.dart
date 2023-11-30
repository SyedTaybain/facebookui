import 'package:flutter/material.dart';

class postModel{
  final VoidCallback avatarOnPressed;
  final VoidCallback moreOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final String title;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  postModel({
    required this.avatarImage,
    required this.shareOnPressed,
    required this.postImage,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.avatarOnPressed,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.title,
});
}

List<postModel> postData=[
  postModel(
      avatarOnPressed: (){print("avatar is working");},
      moreOnPressed: (){print("more_vert is working");},
      likeOnPressed: (){print("like button is working");},
      commentOnPressed: (){print("comment button is working");},
      shareOnPressed: (){print("share button is working");},
      avatarImage: "assets/images/sanji.jpg",
      postImage: "assets/images/453670.jpg",
      name: "sumbool",
      time: "1 hour ago",
      title: "real beauty with ami vala using cream"
  ),

  postModel(
      avatarOnPressed: (){print("avatar is working");},
      moreOnPressed: (){print("more_vert is working");},
      likeOnPressed: (){print("like button is working");},
      commentOnPressed: (){print("comment button is working");},
      shareOnPressed: (){print("share button is working");},
      avatarImage: "assets/images/721546.png",
      postImage: "assets/images/721547.png",
      name: "Noor",
      time: "1 day ago",
      title: "you can defeat me in math and science But in english, you is go home"
  ),

  postModel(
      avatarOnPressed: (){print("avatar is working");},
      moreOnPressed: (){print("more_vert is working");},
      likeOnPressed: (){print("like button is working");},
      commentOnPressed: (){print("comment button is working");},
      shareOnPressed: (){print("share button is working");},
      avatarImage: "assets/images/790589.png",
      postImage: "assets/images/872837.jpg",
      name: "kaynat",
      time: "1 min ago",
      title: "Mary babu nay tana taya"
  ),

  postModel(
      avatarOnPressed: (){print("avatar is working");},
      moreOnPressed: (){print("more_vert is working");},
      likeOnPressed: (){print("like button is working");},
      commentOnPressed: (){print("comment button is working");},
      shareOnPressed: (){print("share button is working");},
      avatarImage: "assets/images/tanaka_halo_5_guardians-1366x768.jpg",
      postImage: "assets/images/sasky.jpg",
      name: "Laiba",
      time: "1 min ago",
      title: "Papa ki pari"
  ),




];















