import 'package:flutter/material.dart';

class addvideo extends StatefulWidget {
  @override
  _addvideoState createState() => _addvideoState();
}

class _addvideoState extends State<addvideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(      iconTheme: IconThemeData(color: Colors.black),

        backgroundColor: Colors.white,title: Text("ADD Video",style: TextStyle(color: Colors.black),),elevation: 0,centerTitle: true,actions: [IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: (){}),IconButton(icon: Icon(Icons.messenger_outline,color: Colors.black,), onPressed: (){})],),
body: ListView(children: [

],),

    );
  }
}
