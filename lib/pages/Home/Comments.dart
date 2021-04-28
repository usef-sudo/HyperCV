import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:easy_localization/easy_localization.dart';

class Comments extends StatefulWidget {
  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(
              Device.height * 0.02,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                            30.0) //                 <--- border radius here
                        ),
                  ),
                  child: Icon(Icons.arrow_back)),
            ),
          ),
          centerTitle: true,
          title: Text('Comments',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black))
              .tr(),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                child: Row(
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
                    Expanded(
                        flex: 1,
                        child: Align(alignment: Alignment.topLeft,
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red[500],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://i.pinimg.com/originals/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yousef  Alnajjar",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            // Text(
                            //   "5 min ago",
                            //   style: TextStyle(color: Colors.grey, fontSize: 20),
                            // ),
                            // Text(
                            //   "Followers 100",
                            //   style: TextStyle(color: Colors.green, fontSize: 20),
                            // ),
                            RaisedButton(
                                elevation: 0,
                                color: Colors.white,
                                onPressed: () {},
                                child: Text(
                                  " + follow",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                                Text(
                                  " 300 ",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),

                          ],
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   height: Device.height * 0.3,
            //   width: Device.width * 0.8,
            //   decoration: new BoxDecoration(
            //       color: Colors.black,
            //       borderRadius: new BorderRadius.all(
            //         Radius.circular(0.0),
            //       )),
            // ),
            Divider(height: 4,thickness: 4,),
            Expanded(flex: 8,
              child: Container(child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      child: Column(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
                              Expanded(flex: 1,child:CircleAvatar(
                                backgroundColor: Colors.white,

                                radius: 20,
                                backgroundImage: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Linkedin.svg/1200px-Linkedin.svg.png"), // no matter how big it is, it won't overflow
                              ),),
                              Expanded(flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Yousef  Alnajjar",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,fontSize: 20),
                                  ),
                                ),
                              ),
                              Expanded(flex: 1,
                                child: Container(
                                    child:  Row(
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
                                    )
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "nice one bro   s://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Linkedin.svg/1200px-Linkedin.svg",
                            style: TextStyle(color: Colors.grey,fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Replay",
                                    style:
                                    TextStyle(color: Colors.black)),
                                SizedBox(width: 15,),
                                Text(
                                  " 12 min ago ",
                                  style:
                                  TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),

                        ],

                      ), /*ListTile(
                        trailing:  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly

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
                            Row(
                              children: [
                                Text("Replay",
                                    style:
                                    TextStyle(color: Colors.black)),
                                Text(
                                  " 12 min ago ",
                                  style:
                                  TextStyle(color: Colors.black),
                                )
                              ],
                            ),

                          ],
                        ),
                        leading: Container(height: 80, decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://i.pinimg.com/originals/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),),
                        title: Text('Ali Mohammad'),
                        subtitle: Text("Great vidieo"),
                      ),*/
                    ),
                  );
                },
              )),
            ),
                Expanded(flex: 2,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                        height: 60,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            // GestureDetector(
                            //   onTap: (){
                            //   },
                            //   child: Container(
                            //     height: 30,
                            //     width: 30,
                            //     decoration: BoxDecoration(
                            //       color: Colors.lightBlue,
                            //       borderRadius: BorderRadius.circular(30),
                            //     ),
                            //     child: Icon(Icons.add, color: Colors.white, size: 20, ),
                            //   ),
                            // ),
                            SizedBox(width: 15,),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Write message...",
                                    hintStyle: TextStyle(color: Colors.black54),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            FloatingActionButton(
                              onPressed: (){},
                              child: Icon(Icons.send,color: Colors.white,size: 18,),
                              backgroundColor: Colors.black,
                              elevation: 0,
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                ),

          ],
        ),
      ),
    );
  }
}
