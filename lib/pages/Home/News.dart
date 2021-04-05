import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: Device.height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(Device.width * 0.1, 0, Device.width * 0.1, 0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(Device.height * 0.012),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, "addvideo");
                },
                child: Container(
                    width: Device.width * 0.6,
                    height: Device.height * 0.05,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Post a new video ?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
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
              height:500,//Device.height-Device.height*0.1,
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
                        Container(
                           color: Colors.white,
                          child: ListTile(
                            leading:
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage("https://i.pinimg.com/originals/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg"), // no matter how big it is, it won't overflow
                            ),

                            title: Text(
                              "yousef  alnajjar",
                              style: TextStyle(color: Colors.black),
                            ),
                            subtitle: Text(
                              "5 min ago \n Followers 100 /+follow",
                              style: TextStyle(color: Colors.black),
                            ),
                            isThreeLine: true,
                            trailing: Container(
                                width: 50,
                                height: 50,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "300",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                )),
                          ),
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
    );
  }
}
