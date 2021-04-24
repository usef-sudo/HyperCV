import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;

import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:video_player/video_player.dart';
import 'package:easy_localization/easy_localization.dart';

class addvideo extends StatefulWidget {
  @override
  _addvideoState createState() => _addvideoState();
}

class _addvideoState extends State<addvideo> {
  VideoPlayerController _controller;

  List<File> fileList = new List<File>();
  File _certification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(
              Device.height * 0.01,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                        10.0) //                 <--- border radius here
                    ),
                  ),
                  child: Icon(Icons.arrow_back)),
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SKIP", style: TextStyle(color: Colors.black)).tr(),
            )
          ],
          title: Text('',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ADD Video",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Device.height * 0.03),
              ).tr(),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                Device.width * 0.1, 0, Device.width * 0.1, 0),
            child: Card(
              color: Color.fromRGBO(238, 238, 255, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.all(Device.height * 0.012),
                child: Container(
                    width: Device.width * 0.6,
                    height: Device.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        (_certification != null)
                            ? Stack(
                          children: [
                            Container(
                                child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.insert_drive_file),
                                      Text(p.extension(_certification.path))
                                    ])),
                          ],
                        )
                            : Container(
                          child: Text("Attach MP4").tr(),
                        ),
                        (_certification != null)
                            ? IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                _certification = null;
                              });
                            })
                            : IconButton(
                            icon: Icon(Icons.attach_file),
                            onPressed: () {
                              addfile().then((value) {
                                _controller = VideoPlayerController.file(
                                    _certification);
                                _controller.addListener(() {
                                  setState(() {});
                                });
                                _controller.setLooping(true);
                                _controller.initialize().then((_) => setState(() {}));
                                _controller.play();
                              });
                            })
                      ],
                    )),
              ),
            ),
          ),
          Container(
            height: Device.height * 0.02,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding:  EdgeInsets.all(Device.height * 0.01),
              child: Text(
                "Describe your video",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Device.height * 0.02),
              ).tr(),
            ),
            Padding(
              padding:  EdgeInsets.all(Device.height * 0.01),
              child: InkWell(
                onTap: () {
                  if (_certification == null) {
                  } else {
                    showDialog(
                        context: context,
                        builder: (_) => new StatefulBuilder(
                            builder: (context, setState) {
                              return  AlertDialog(
                                title: new Container(
                                  height: Device.height*0.3,
                                  width: Device.height*0.3,
                                  child: AspectRatio(

                                    aspectRatio: _controller.value.aspectRatio,
                                    // Use the VideoPlayer widget to display the video.
                                    child: VideoPlayer(_controller),
                                  ),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text('Back').tr(),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                    child: Icon((_controller.value.isPlaying)?Icons.pause_circle_filled:Icons.play_circle_fill),
                                    onPressed: () {
                                      print(_controller.dataSource);
                                      // Wrap the play or pause in a call to `setState`. This ensures the
                                      // correct icon is shown
                                      setState(() {
                                        // If the video is playing, pause it.
                                        if (_controller.value.isPlaying) {
                                          _controller.pause();
                                        } else {
                                          // If the video is paused, play it.
                                          _controller.play();
                                        }
                                      });
                                    },
                                  ),
                                ],
                              );}));
                  }
                },
                child: Text(
                  "Preview", //todo make it show the CVV video on alert
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Device.height * 0.02),
                ).tr(),
              ),
            ),
          ]),
          Padding(
            padding:  EdgeInsets.all(Device.height * 0.01),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 0,
                color: Color.fromRGBO(238, 238, 255, 1),
                child: Padding(
                  padding: EdgeInsets.all(Device.height * 0.01),
                  child: TextFormField(
                    // onChanged: (val) => _description = val,
                    maxLines: 5,
                    decoration: InputDecoration.collapsed(),
                  ),
                )),
          ),
          Container(
            height: Device.height * 0.02,
          ),


          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '');
            },
            child: Center(
              child: Container(
                height: Device.height * 0.1,
                width: Device.width * 0.8,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.all(
                      Radius.circular(20.0),
                    )),
                child: Padding(
                  padding:  EdgeInsets.all(Device.height * 0.01),
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0) //
                          )),
                      child: Center(
                          child: Text(
                            "Post a new video",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          ))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future addfile() async {
    await FilePicker.getFile(
      type: FileType.video,
    ).then((file) {
      setState(() {
        _certification = file;
      });
    });
  }
}
