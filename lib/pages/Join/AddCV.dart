import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:file_picker/file_picker.dart';
import 'package:video_player/video_player.dart';

class AddCV extends StatefulWidget {
  static File CVV;

  @override
  _AddCVState createState() => _AddCVState();
}

class _AddCVState extends State<AddCV> {
  VideoPlayerController _controller;

  List<File> fileList = new List<File>();

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
              padding:  EdgeInsets.all( Device.height * 0.01),
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
              padding:  EdgeInsets.all( Device.height * 0.01),
              child: Text(
                "ADD Video CV ",
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
                        (AddCV.CVV != null)
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
                                        Text(p.extension(AddCV.CVV.path))
                                      ])),
                                ],
                              )
                            : Container(
                                child: Text("Attach MP4").tr(),
                              ),
                        (AddCV.CVV != null)
                            ? IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    AddCV.CVV = null;
                                  });
                                })
                            : IconButton(
                                icon: Icon(Icons.attach_file),
                                onPressed: () {
                                  addfile().then((value) {
                                    _controller = VideoPlayerController.file(
                                        AddCV.CVV);
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
              padding:  EdgeInsets.all( Device.height * 0.01),
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
                  if (AddCV.CVV == null) {
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
            padding:  EdgeInsets.all( Device.height * 0.01),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 0,
                color: Color.fromRGBO(238, 238, 255, 1),
                child: Padding(
                  padding: EdgeInsets.all( Device.height * 0.01),
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
          Center(
            child: Padding(
              padding:  EdgeInsets.all( Device.height * 0.01),
              child: Text(
                "Add Reference Images",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Device.height * 0.03),
              ).tr(),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(Device.height * 0.006),
              child: GridView.builder(
                  itemCount: fileList.length + 1,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: Device.height * 0.005,
                      mainAxisSpacing: Device.height * 0.005,
                      childAspectRatio:
                          ((MediaQuery.of(context).size.width - 30) / 2) /
                              240), //width/height
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int i) {
                    List<String> picExt = ['.jpg', '.jpeg', '.bmp', '.png'];
                    if (i == 0) {
                      return InkWell(
                        onTap: pickFiles,
                        child: Container(
                            child: Icon(
                          Icons.add,
                          size: Device.height * 0.05,
                        )),
                      );
                    } else {
                      if (fileList != null && fileList.length > 0) if (picExt
                          .contains(p.extension(fileList[i - 1].path))) {
                        return InkWell(
                          onTap: () {
                            removeA(i - 1);
                          },
                          child: Stack(
                            children: [
                              Image.file(fileList[i - 1]),
                              Positioned(
                                top: 0.0,
                                right: 0.0,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                    color: Colors.red[800],
                                  ),
// onPressed:removeA(i - 1)
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return InkWell(
                          onTap: () {
                            removeA(i - 1);
                          },
                          child: Stack(
                            children: [
                              Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                    Icon(Icons.insert_drive_file),
                                    Text(p.extension(fileList[i - 1].path))
                                  ])),
                              Positioned(
                                top: 0.0,
                                right: 0.0,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                    color: Colors.red[800],
                                  ),
// onPressed:removeA(i - 1)
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    }
                    return Container(
// must never be shown
// color: Colors.red,
// height: 200,
// width: 200,
                        );
                  }

//fileListThumb,
                  ),
            ),
            height: Device.height * 0.35,
            color: Color.fromRGBO(238, 238, 255, 1),
          ),
          Container(
            height: Device.height * 0.02,
          ),
          Padding(
            padding:  EdgeInsets.all( Device.height * 0.01),
            child: Text(
              "About you",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: Device.height * 0.02),
            ).tr(),
          ),
          Padding(
            padding:  EdgeInsets.all( Device.height * 0.01),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 0,
                color: Color.fromRGBO(238, 238, 255, 1),
                child: Padding(
                  padding: EdgeInsets.all( Device.height * 0.01),
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
//todo must create user using ali api
              Navigator.pushNamed(context, 'Join');
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
                  padding:  EdgeInsets.all( Device.height * 0.01),
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0) //
                                  )),
                      child: Center(
                          child: Text(
                        "Add Vedieo CV",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ).tr())),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future pickFiles() async {
    await FilePicker.getMultiFile(
      type: FileType.custom,
      allowedExtensions: [
        'jpg',
        'png',
        'jpeg',
        'bmp',
        'pdf',
      ],
    ).then((files) {
      setState(() {
        var f = files as List;
        f.forEach((element) {
          fileList.add(element);
        });
      });
    });
  }

  removeA(int index) {
    //print(index.toString() + "from tabbed");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("SURE").tr(),
          // content: Text(""),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: new Text(
                "Close",
                style: TextStyle(color: Colors.blue),
              ).tr(),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: new Text(
                "remove",
                style: TextStyle(color: Colors.red),
              ).tr(),
              onPressed: () {
                setState(() {
                  fileList.removeAt(index);
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  Future addfile() async {
    await FilePicker.getFile(
      type: FileType.video,
    ).then((file) {
      setState(() {
        AddCV.CVV = file;
      });
    });
  }
}
