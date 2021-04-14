import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:easy_localization/easy_localization.dart';

import 'Jobs.dart';
import 'News.dart';
import 'Profile.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
   News(),
   Jobs(),
   Jobs(),
   Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    Timer(Duration(seconds: 0), () {
      if (Device.welcome)
        showDialog(
            context: context,
            builder: (context) {
              return Material(
                color: Colors.black.withOpacity(0.2),
                child: Container(color: Colors.transparent,child: Column(children: [
Padding(
  padding:  EdgeInsets.all(Device.height*0.02),
  child:   InkWell(onTap: ()=>Navigator.pop(context),child: Align(alignment: Alignment.centerRight,child: Text("Skip",style: TextStyle(color: Colors.white,fontSize: Device.height*0.03),))),
),
Container(height: Device.height*0.07,),
Padding(
  padding:  EdgeInsets.all(Device.height*0.02),
  child:   Align(alignment: Alignment.center,child: Text("welcome to hyper CV!",style: TextStyle(color: Colors.white,fontSize: Device.height*0.028))),
),
                  Container(height: Device.height*0.07,),

Padding(
  padding:  EdgeInsets.all(Device.height*0.02),
  child:   Align(alignment: Alignment.centerLeft,child: Text("About hyper CV!",style: TextStyle(color: Colors.white,fontSize: Device.height*0.028))),
),
                  Container(height: Device.height*0.02,),


                  Center(
                    child: Container(
                      height: Device.height * 0.2,
                      width: Device.width * 0.8,
                      decoration: new BoxDecoration(
                          color: Colors.black,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(30.0),
                          )),
                      child: Image.asset('lib/assets/download.png'),
                    ),
                  ),


                ],),),
              );
            }).then((value) => setState(() {
        }));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return WillPopScope(
      onWillPop: () => _onBackPressed(),

      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          fixedColor: Colors.black,

          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: 'Home',
            ),

            BottomNavigationBarItem(

              icon: Icon(Icons.business_center,),
              label: 'Jobs',
            ),
 BottomNavigationBarItem(

              icon: Icon(Icons.business,),
              label: 'CV',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          //selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),

        drawer: MyDrawer(),
        appBar: AppBar(      iconTheme: IconThemeData(color: Colors.black),

          backgroundColor: Colors.white,title: Text("News Feed",style: TextStyle(color: Colors.black),),elevation: 0,centerTitle: true,actions: [IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: (){}),IconButton(icon: Icon(Icons.messenger_outline,color: Colors.black,), onPressed: (){})],),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),

      ),
    );
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?').tr(),
        content: new Text('Do you want to Sign Out').tr(),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: Text("no").tr(),
          ),
          SizedBox(height: Device.height * 0.01),
          new GestureDetector(
            onTap: () => Navigator.of(context).pop(true),
            child: Text("yes").tr(),
          ),
        ],
      ),
    );
  }
}
