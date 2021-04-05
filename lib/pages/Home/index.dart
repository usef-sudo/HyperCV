import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {


    return Scaffold(
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

    );
  }
}
