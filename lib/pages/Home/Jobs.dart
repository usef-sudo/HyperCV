import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';

import 'drawer.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  bool isremote=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Job",
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
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Device.height * 0.01,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(
                  Device.width * 0.1, 0, Device.width * 0.1, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "JOBs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(238, 238, 255, 1),
                                border: Border.all(width: 1.0),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        10.0) //                 <--- border radius here
                                    ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.green,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(238, 238, 255, 1),
                                border: Border.all(width: 1.0),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        10.0) //                 <--- border radius here
                                    ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.green,
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new InkWell(
                onTap: () {
                  setState(() {
    isremote = false;

    });
                },
                child: new Container(
                  width: 150.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    color: isremote ? Colors.grey : Colors.black,
                    border: new Border.all(color: Colors.white, width: 2.0),
                    borderRadius: new BorderRadius.circular(15.0),
                  ),
                  child: new Center(
                    child: new Text(
                      'Full Time',
                      style: new TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              new InkWell(
                onTap: () {
                  setState(() {
    isremote = true;

    });
                },
                child: new Container(
                  width: 150.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    color: isremote ? Colors.black : Colors.grey,
                    border: new Border.all(color: Colors.white, width: 2.0),
                    borderRadius: new BorderRadius.circular(15.0),
                  ),
                  child: new Center(
                    child: new Text(
                      'Remote',
                      style: new TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Text("Recommended Jobs",style: TextStyle(fontWeight: FontWeight.bold),),
              Icon(Icons.crop_square,color: Colors.green,)
            ],),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.fromLTRB(
                      Device.width * 0.05, 0, Device.width * 0.05, 0),
                  child: InkWell(onTap: (){
                    Navigator.pushNamed(context, "jobDetails");
                  },
                    child: Card(
                      color: Color.fromRGBO(238, 238, 255, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 1,
                      child: Padding(
                        padding: EdgeInsets.all(Device.height * 0.012),
                        child: Container(
                            height: Device.height * 0.09,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child:

                                ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,

                                      radius: 20,
                                      backgroundImage: NetworkImage(
                                          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Linkedin.svg/1200px-Linkedin.svg.png"), // no matter how big it is, it won't overflow
                                    ),
                                  ),
                                  title:   Text(
                                    "Uber for home car",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ) ,
                                  subtitle:    Text(
                                    "UI/UX designer",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )

)),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],

      ),
    );
  }
}
