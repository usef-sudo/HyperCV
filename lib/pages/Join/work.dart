import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';

class work extends StatefulWidget {
  @override
  _workState createState() => _workState();
}

class _workState extends State<work> {
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
              child: Text("SKIP", style: TextStyle(color: Colors.black)),
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
        "ADD Work ",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Device.height * 0.03),
      ),
    ),
    ),

    Container(
    height: Device.height * 0.02,
    ),

            Padding(
              padding: EdgeInsets.fromLTRB(
                  Device.width * 0.1, 0, Device.width * 0.1, 0),
              child: Card(
                color: Color.fromRGBO(238, 238, 255, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.all(Device.height * 0.012),
                  child: Container(
                      width: Device.width * 0.6,
                      height: Device.height * 0.07,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.date_range,
                                size: 35,
                                color: Colors.green,

                              ),
                              Text(
                                ":",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green,),
                              ),
                            ],
                          ),
Container(
  width:  Device.width * 0.6,
  child: TextField(
    decoration: InputDecoration(

  ),
))

/*
                         Text(
                              "Amman,Jordan",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),*/
                        ],
                      )),
                ),
              ),
            ),
            Container(
              height: Device.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  Device.width * 0.1, 0, Device.width * 0.1, 0),
              child: Card(
                color: Color.fromRGBO(238, 238, 255, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.all(Device.height * 0.012),
                  child: Container(
                      width: Device.width * 0.6,
                      height: Device.height * 0.07,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 35,
                                color: Colors.green,

                              ),
                              Text(
                                ":",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green,),
                              ),
                            ],
                          ),
                          Container(
                              width:  Device.width * 0.6,
                              child: TextField(
                                decoration: InputDecoration(

                                ),
                              ))

/*
                         Text(
                              "Amman,Jordan",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),*/
                        ],
                      )),
                ),
              ),
            ),
            Container(
              height: Device.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  Device.width * 0.1, 0, Device.width * 0.1, 0),
              child: Card(
                color: Color.fromRGBO(238, 238, 255, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.all(Device.height * 0.012),
                  child: Container(
                      width: Device.width * 0.6,
                      height: Device.height * 0.07,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              // Icon(
                              //   Icons.location_on,
                              //   size: 35,
                              // ),
                              Text(
                                "Title :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                              width:  Device.width * 0.6,
                              child: TextField(
                                decoration: InputDecoration(

                                ),
                              ))

/*
                         Text(
                              "Amman,Jordan",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),*/
                        ],
                      )),
                ),
              ),
            ),
            Container(
              height: Device.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  Device.width * 0.1, 0, Device.width * 0.1, 0),
              child: Card(
                color: Color.fromRGBO(238, 238, 255, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.all(Device.height * 0.012),
                  child: Container(
                      width: Device.width * 0.6,
                      height: Device.height * 0.07,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              // Icon(
                              //   Icons.location_on,
                              //   size: 35,
                              // ),
                              Text(
                                "Place :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                              width:  Device.width * 0.6,
                              child: TextField(
                                decoration: InputDecoration(

                                ),
                              ))

/*
                         Text(
                              "Amman,Jordan",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),*/
                        ],
                      )),
                ),
              ),
            ),
            Container(
              height: Device.height * 0.02,
            ),
            Container(
              height: Device.height * 0.02,
            ),
            InkWell(
              onTap: () {
//todo must create user using ali api
                Navigator.pushNamed(context, 'Complete Profile');
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
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border:
                            Border.all(color: Colors.green[800], width: 1.0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20.0) //
                            )),
                        child: Center(
                            child: Text(
                              "Add Work",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            ))),
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
                Navigator.pop(context);
              },
              child: Center(
                child: Container(
                  height: Device.height * 0.08,
                  width: Device.width * 0.75,
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(20.0) //
                          )),
                      child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.grey),
                          ))),
                ),
              ),
            ),
            Container(
              height: Device.height * 0.04,
            ),
    ])
    );
  }
}
