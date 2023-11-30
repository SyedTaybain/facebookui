

import 'package:facebook_ui/pages/frient_request.dart';
import 'package:flutter/material.dart';

class profileInfoModel{
  final VoidCallback avatarOnPressed;
  final String text1;
  final String text2;
  final Icon icon;

  profileInfoModel({
    required this.text1,
    required this.text2,
     required this.icon,
    required this.avatarOnPressed,
});
}


List<profileInfoModel> profileInfoData=[


  profileInfoModel(
      text1: "Lives in",
      text2: "Islamabad",
      icon: Icon(Icons.home),
      avatarOnPressed: (){print("this is working");},
  ),

  profileInfoModel(
    text1: "From",
    text2: "Islamabad",
    icon: Icon(Icons.location_on),
    avatarOnPressed: (){print("this is working");},
  ),

  profileInfoModel(
    text1: "Joined july 2015",
    text2: "",
    icon: Icon(Icons.access_time_outlined),
    avatarOnPressed: (){print("this is working");},
  ),

  profileInfoModel(
    text1: "See you About info",
    text2: "",
    icon: Icon(Icons.more_horiz_outlined),
    avatarOnPressed: (){print("this is working");},
  ),



];