

import 'package:flutter/material.dart';

class settingModel{
  final Icon ?  icon;
  final Image? image;
  final String text;

  settingModel({
   required this.text,
     this.icon,
    this.image,
});
}



List<settingModel> settingData = [

  settingModel(
      text: "Groups",
      image: Image.asset("assets/images/group.png",height: 25,width: 25,),
  ),

  settingModel(
      text: "MarketPlace",
      image: Image.asset("assets/images/market.png",height: 25,width: 25,),
  ),

  settingModel(
    text: "Friends",
    image: Image.asset("assets/images/friends.png",height: 25,width: 25,),
  ),

  settingModel(
    text: "Videos on Watch",
    image: Image.asset("assets/images/television.png",height: 25,width: 25,),
  ),

  settingModel(
    text: "saved",
    image: Image.asset("assets/images/bookmark.png",height: 25,width: 25,),
  ),

  settingModel(
    text: "Pages",
    image: Image.asset("assets/images/flag.png",height: 25,width: 25,),
  ),

  settingModel(
    text: "Reels",
    image: Image.asset("assets/images/reels.png",height: 25,width: 25,),
  ),

  settingModel(
    text: "Events",
    image: Image.asset("assets/images/event.png",height: 25,width: 25,),
  ),

  settingModel(
    text: "Community resources",
    image: Image.asset("assets/images/handshake.png",height: 25,width: 25,),
  ),

  settingModel(
    text: "Help & Support",
    image: Image.asset("assets/images/question.png",height: 25,width: 25,),
  ),

  settingModel(
    text: "Setting & privacy",
    image: Image.asset("assets/images/settings.png",height: 25,width: 25,),
  ),




];