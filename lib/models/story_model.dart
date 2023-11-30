import 'package:flutter/material.dart';

class storyModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  storyModel({
    required this.onTap,
    required this.image,
    required this.userName,

  });
}
List<storyModel> storyData=[
  storyModel(
      onTap: (){print("this is 1st story");},
      image: "assets/images/1.jpg",
      userName: "Noor",

  ),

  storyModel(onTap: (){print("this is 2nd story");},
      image: "assets/images/2.jpg",
      userName: "fatima"),

  storyModel(onTap: (){print("this is 3rd story");},
      image: "assets/images/3.jpg",
      userName: "kaynat"),

  storyModel(onTap: (){print("this is 4th story");},
      image: "assets/images/sasky.jpg",
      userName: "sumbool"),

  storyModel(onTap: (){print("this is 5th story");},
      image: "assets/images/12.jpg",
      userName: "ashya"),

  storyModel(onTap: (){print("this is 6th story");},
      image: "assets/images/13.jpg",
      userName: "laiba"),



];
