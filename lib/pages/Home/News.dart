import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';

import 'drawer.dart';
import 'package:easy_localization/easy_localization.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "News Feed",
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
          SizedBox(
            height: Device.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                Device.width * 0.1, 0, Device.width * 0.1, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "addvideo");
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(Device.height * 0.012),
                  child: Container(
                      width: Device.width * 0.6,
                      height: Device.height * 0.05,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Post a new video ?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Device.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                Device.width * 0.05, 0, Device.width * 0.05, 0),
            child: Center(
              child: Container(
                height: 500, //Device.height-Device.height*0.1,
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        // fit: StackFit.passthrough,
                        //  overflow: Overflow.visible,
                        children: [
                          Container(
                            height: Device.height * 0.3,
                            width: Device.width * 0.8,
                            decoration: new BoxDecoration(
                                color: Colors.black,
                                borderRadius: new BorderRadius.all(
                                  Radius.circular(0.0),
                                )),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Text("fghjkl;fesfvc"),
                              // Container(
                              //
                              //   decoration: BoxDecoration(
                              //       image: DecorationImage(
                              //           image: NetworkImage(
                              //               "https://i.pinimg.com/originals/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg"))),
                              // ),
                              Expanded(flex: 1,child: Container(height: 100, decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red[500],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://i.pinimg.com/originals/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg'),
                                  fit: BoxFit.cover,
                                ),
                          ),)),
                             Expanded(flex: 2,
                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: new  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Yousef  Alnajjar",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,fontSize: 20),
                                      ),
                                      Text(
                                        "5 min ago",
                                        style: TextStyle(color: Colors.grey,fontSize: 20),
                                      ),   Text(
                                        "Followers 100",
                                        style: TextStyle(color: Colors.green,fontSize: 20),
                                      ),
                                      RaisedButton(
                                          elevation: 0,
                                          color: Colors.white,
                                          onPressed: () {},
                                          child: Text(
                                            " + follow",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,fontSize: 18),
                                          ))
                                    ],
                                  ),
                               ),
                             ),
                              Expanded(flex: 1,
                                child: Container(
                                 child:  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly

                                   ,
                                     children: [
                                       Row(
                                         children: [
                                           Icon(
                                             Icons.favorite_border,
                                             color: Colors.red,
                                           ),
                                           Text(
                                             " 300 ",
                                             style:
                                             TextStyle(color: Colors.black),
                                           )
                                         ],
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: GestureDetector(

                                           onTap: (){

                                             Navigator.pushNamed(context, 'comments');
                                           },
                                           child: Container(
                                             height: 40,
                                             width: 40,
                                             child: Icon(
                                               Icons.chat,
                                               size: 20,
                                               color: Colors.white,
                                             ),
                                             decoration: new BoxDecoration(
                                                 color: Colors.black,
                                                 borderRadius: new BorderRadius.all(
                                                   Radius.circular(10.0),
                                                 )),
                                           ),
                                         ),
                                       ),

                                     ],
                                   )
                                     ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
