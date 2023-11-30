import 'package:facebook_ui/pages/Profile.dart';
import 'package:facebook_ui/pages/Video.dart';
import 'package:facebook_ui/pages/home.dart';
import 'package:facebook_ui/pages/frient_request.dart';
import 'package:facebook_ui/pages/notification.dart';
import 'package:facebook_ui/pages/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class mainPage extends StatefulWidget {

  @override
  _mainPageState createState() => _mainPageState();
}
class _mainPageState extends State<mainPage> with
    SingleTickerProviderStateMixin {
  TabController?_tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined),),
    Tab(icon: Icon(Icons.people_outline,),),
    Tab(icon: Icon(Icons.live_tv_outlined),),
    Tab(icon: Icon(Icons.account_circle_outlined,),),
    Tab(icon: Icon(Icons.notifications_none_outlined,),),
    Tab(icon: Icon(Icons.menu_outlined, ),),
    //Tab(icon: Icon(Icons.menu_outlined, ),),
  ];

  @override
  void initState() {
    _tabController = TabController(length: topTabs.length,initialIndex: 0, vsync: this);
    super.initState();
  }

  Future<bool> _onWillPop() async{
    if(_tabController?.index == 0){
      await SystemNavigator.pop();
    }
    Future.delayed(Duration(milliseconds: 100),(){
      _tabController?.index = 0;
    }
    );
    return _tabController?.index ==0;
  }

  final _scfKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("facebook",style: TextStyle(color: Colors.blue, fontSize: 30),),
          actions: [
            Container(
              child: IconButton(
                icon: Icon(Icons.search_outlined,color: Colors.black,),
                onPressed: () { print("click on seacrh button"); },
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            TextButton(
              onPressed: (){},
              child: Container(
                child: Image.asset("assets/images/img2.png",height: 40,width: 40,),

              ),
            )
          ],
          bottom: TabBar(
           controller: _tabController,
            indicatorColor: Colors.grey,
            tabs: topTabs,
          ),
        ),

        body: TabBarView(
          controller: _tabController,
          children: [
            facebookHome(),
            friendRequest(),
            video(),
            profile(),
            notification(),
            setting(),
          ],
        ),
      ),
    );
  }
}



















