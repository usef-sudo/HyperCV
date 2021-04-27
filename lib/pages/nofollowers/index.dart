import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:easy_localization/easy_localization.dart';

class Nofollowers extends StatefulWidget {
  @override
  _NofollowersState createState() => _NofollowersState();
}

class _NofollowersState extends State<Nofollowers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(      iconTheme: IconThemeData(color: Colors.black),

          backgroundColor: Colors.white,title: Text("News Feed",style: TextStyle(color: Colors.black),).tr(),elevation: 0,centerTitle: true,


 ),

        body: Column(children: [
          SizedBox(
            height: Device.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Device.width * 0.1, 0, Device.width * 0.1, 0),
            child:GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "addvideo");
              },
              child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(Device.height * 0.012),
                child:  Container(
                      width: Device.width * 0.8,
                      height: Device.height * 0.05,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Post a new video ?",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ).tr())),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Device.height * 0.01,
          ),
          Padding(
            padding:  EdgeInsets.all(Device.height * 0.01,),
            child: Text("it's look that you are not following any one yet").tr(),
          ),
          Container(
            height: Device.width * 0.01,
          ),
          Padding(
            padding:  EdgeInsets.all(Device.height * 0.01,),
            child: Text("Follow people or add interests").tr(),
          ),
          Container(
            height: Device.height * 0.02,
          ),
          InkWell(
            onTap: () {
//todo must create user using ali api
              Navigator.pushNamed(context, 'follow');
            },
            child: Center(
              child: Container(
                height: Device.height * 0.06,
                width: Device.width * 0.8,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.all(
                      Radius.circular(20.0),
                    )),
                child: Padding(
                  padding:  EdgeInsets.all(Device.height * 0.01,),
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0) //
                          )),
                      child: Center(
                          child: Text(
                            "Folllow people",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          ).tr())),
                ),
              ),
            ),
          ),
          Container(
            height: Device.height * 0.02,
          ),
          InkWell(
            onTap: () {
//todo must create user using ali api
              Navigator.pushNamed(context, 'interest');
            },
            child: Center(
              child: Container(
                height: Device.height * 0.06,
                width: Device.width * 0.8,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.all(
                      Radius.circular(20.0),
                    )),
                child: Padding(
                  padding:  EdgeInsets.all(Device.height * 0.01,),
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0) //
                          )),
                      child: Center(
                          child: Text(
                            "Add Interests",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          ).tr())),
                ),
              ),
            ),
          ),
          Container(
            height: Device.height * 0.02,
          ),

        ],),
    );
  }
}
