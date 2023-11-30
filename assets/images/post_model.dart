import 'package:flutter/material.dart';

class postModel{
  final VoidCallback avatarOnPressed;
  final String name;
  final String time;
  final VoidCallback moreOnTAp;
  final String posttitle;
  final String postImage;
  final String avatarImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;
postModel({
  required this.time,
  required this.name,
  required this.avatarOnPressed,
  required this.commentOnPressed,
  required this.likeOnPressed,
  required this.moreOnTAp,
  required this.postImage,
  required this.posttitle,
  required this.shareOnPressed,
  required this.avatarImage,

});
}


List<postModel> postData=[
  postModel(
    avatarImage: "assets/images/sanji.jpg",
    time: "12 min ago",
      name: "ashya",
      postImage: "assets/images/sasky.jpg",
      posttitle: "this sdjf is the vest area in pakistan but inaasdf jasdf ajd",
      avatarOnPressed:()=> print("avatar is clicked"),
    moreOnTAp: ()=>print("more tab is clicked"),
      likeOnPressed: ()=>print("like button is clicked"),
    commentOnPressed: ()=>print("comment button is clicked"),
    shareOnPressed: ()=>print("share button is clicked"),
  ),
  postModel(
    avatarImage: "assets/images/sasky.jpg",
    time: "12 min ago",
    name: "ashya",
    postImage: "assets/images/sasky.jpg",
    posttitle: "this sdjf is the vest area in pakistan but inaasdf jasdf ajd",
    avatarOnPressed:()=> print("avatar is clicked"),
    moreOnTAp: ()=>print("more tab is clicked"),
    likeOnPressed: ()=>print("like button is clicked"),
    commentOnPressed: ()=>print("comment button is clicked"),
    shareOnPressed: ()=>print("share button is clicked"),
  ),
  postModel(
    avatarImage: "assets/images/3.jpg",
    time: "12 min ago",
    name: "ashya",
    postImage: "assets/images/sasky.jpg",
    posttitle: "this sdjf is the vest area in pakistan but inaasdf jasdf ajd",
    avatarOnPressed:()=> print("avatar is clicked"),
    moreOnTAp: ()=>print("more tab is clicked"),
    likeOnPressed: ()=>print("like button is clicked"),
    commentOnPressed: ()=>print("comment button is clicked"),
    shareOnPressed: ()=>print("share button is clicked"),
  )


];
