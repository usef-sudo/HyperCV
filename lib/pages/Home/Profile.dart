import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:video_player/video_player.dart';
import 'package:easy_localization/easy_localization.dart';

import 'drawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  VideoPlayerController _controller;
  List<Widget> MySkills = new List<Widget>();
  List<String> MySkillss = new List<String>();
  TextEditingController skillc = new TextEditingController();
  bool ispost = false;
  bool loud = false;
  @override
  void initState() {
    MySkillss.add("Flutter mobile frame work ");
    MySkillss.add("ASP");
    MySkillss.add("Leader");
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              onPressed: () {
                Navigator.pushNamed(context, 'Message');
              })
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
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (_controller.value.isPlaying) {
                          _controller.pause();
                        } else {
                          // If the video is paused, play it.
                          _controller.play();
                        }
                        ispost = !ispost;
                      });
                    },
                    child: Column(children: [
                      Text(
                        'Post',
                        style: TextStyle(
                            color: ispost ? Colors.green : Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '45',
                        style: TextStyle(
                            color: ispost ? Colors.green : Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
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
                child: ispost
                    ? (loud
                        ? Container(
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Container(
                            height: 500,
                            child: GridView.count(
                              crossAxisCount: 2,
                              children: List.generate(100, (index) {
                                return Center(
                                  child: Column(
                                    children: <Widget>[
                                      Image.network(
                                        'https://picsum.photos/500/500?random=$index',
                                        width: 100,
                                        height: 100,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Video $index',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ))
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(Device.height * 0.02),
                            child: Container(
                              height: Device.height * 0.3,
                              width: Device.width,
                              child: AspectRatio(
                                aspectRatio: _controller.value.aspectRatio,
                                // Use the VideoPlayer widget to display the video.
                                child: VideoPlayer(_controller),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                              Text(" 22")
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                            child: Text('Discription\n',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                              width: Device.width,
                              child: Text(
                                  'You might consider adding a professional profile section to your resume so employers can immediately see how you could benefit their company. This guide will help you write your professional profile and show you some examples to help you get started.')),
                          SizedBox(
                            height: 20,
                          ),
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
                            child: Text('My Skills',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),

                          Container(
                            height: Device.height * 0.01,
                          ),

                          // todo chip ships
                          Padding(
                            padding: EdgeInsets.all(Device.height * 0.01),
                            child: chipList(),
                          ),
                          Container(
                            height: Device.height * 0.01,
                          ),
                          Center(
                            child: InkWell(
                                onTap: () {
                                  // dialog . then setstate and add a chip in myskills
                                  showDialog(
                                      context: context,
                                      builder: (_) => new AlertDialog(
                                            title: new Text("Write Your Skill")
                                                .tr(),
                                            content: new TextField(
                                              controller: skillc,
                                            ),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text('Back').tr(),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              FlatButton(
                                                child: Text('ADD').tr(),
                                                onPressed: () {
                                                  //  MySkills.add(_buildChip(skillc.text));
                                                  MySkillss.add(skillc.text);
                                                  skillc.clear();
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          )).then((value) => setState(
                                        () {},
                                      ));
                                },
                                child: Chip(
                                  backgroundColor:
                                      Color.fromRGBO(238, 238, 255, 1),
                                  label: Text("ADD").tr(),
                                )),
                          ),

                          Container(
                            height: Device.height * 0.02,
                          ),
                          ExpansionTile(
                            title: Text(
                              "work",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "first one",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "second one",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "theird one",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: Device.height * 0.01,
                          ),
                          ExpansionTile(
                            title: Text(
                              "Education",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "first one",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "second one",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "theird one",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: Device.height * 0.01,
                          ),
                          ExpansionTile(
                            title: Text(
                              "Certification",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "first one",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "second one",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "theird one",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: Device.height * 0.01,
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

  Widget _buildChip(String label) {
    return Chip(
        labelPadding: EdgeInsets.all(2.0),
        label: Text(
          label,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromRGBO(238, 238, 255, 1),
        elevation: 2.0,
        shadowColor: Color.fromRGBO(238, 238, 255, 1),
        padding: EdgeInsets.all(Device.height * 0.01),
        onDeleted: () {
          setState(() {
            MySkillss.remove(label);
          });
        });
  }

  chipList() {
    MySkills.clear();

    MySkillss.forEach((element) {
      MySkills.add(_buildChip(element));
    });
    return Wrap(spacing: 6.0, runSpacing: 6.0, children: MySkills);
  }
}
