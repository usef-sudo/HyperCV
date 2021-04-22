import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';

import 'drawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(



              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'search');
              }),
          IconButton(
              icon: Icon(
                Icons.messenger_outline,
                color: Colors.black,
              ),
              onPressed: () {    Navigator.pushNamed(context, 'Message');})
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(250, 10, 0, 0),
                    child: RaisedButton(
                        color: Colors.white70,
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit_outlined,
                              color: Colors.black,
                            ),
                            Text(" Edit Profile")
                          ],
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                    child: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  child: Center(
                      child: Container(
                          width: Device.width / 2.5,
                          height: Device.height / 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
                              fit: BoxFit.cover,
                            ),
                          ))),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Ali Mohammad',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Amman,Jordan',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Text(
                      'Years.Exp',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '6',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ]),
                  Column(children: [
                    Text(
                      'Post',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '45',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ]),
                  Column(children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '175',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Text('About\n',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                        width: Device.width,
                        child: Text(
                            'A professional profile—or resume profile—is an important tool to consider when building your resume. It is a description that highlights your skills and expertise, and it shows employers what assets you will bring to the role for which you are applying. You might consider adding a professional profile section to your resume so employers can immediately see how you could benefit their company. This guide will help you write your professional profile and show you some examples to help you get started.')),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('My Skills\n',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Qualification\n',
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
