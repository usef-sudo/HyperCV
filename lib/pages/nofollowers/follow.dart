import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';

class follow extends StatefulWidget {
  @override
  _followState createState() => _followState();
}

class _followState extends State<follow> {
  List<Widget> MySkills = new List<Widget>();
  TextEditingController skillc = new TextEditingController();
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
          title: Text('Follow people',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white),


      body:  SafeArea(
        child: new DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.white,


            body: Column(
              children: <Widget>[
                // construct the profile details widget here
                /*  SizedBox(
                height: 180,
                child: Center(
                  child: Text(
                    'Profile Details Goes here',
                  ),
                ),
              ),*/
                Container(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
//todo must create user using ali api
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
                                  "Import your contact",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, color: Colors.white),
                                ))),
                      ),

                    ),
                  ),
                ),
                     Container(
                  height: 15,
                ),

                // the tab bar with two items
                SizedBox(
                  height: 50,
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    bottom: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Tab(
                          //    icon: Icon(Icons.directions_bike),
                          child: Text("FaceBook",style: TextStyle(color: Colors.black),),
                        ),
                        Tab(
                          //    icon: Icon(Icons.directions_bike),
                          child: Text("Instagram",style: TextStyle(color: Colors.black),),
                        ),
                        Tab(
                          child: Text("LinkedIn",style: TextStyle(color: Colors.black),),


                        ),
                        Tab(
                          //    icon: Icon(Icons.directions_bike),
                          child: Text("Google",style: TextStyle(color: Colors.black),),
                        ),

                      ],
                    ),
                  ),
                ),

                // create widgets for each tab bar here
                Expanded(
                  child: TabBarView(
                    children: [
                      Text("1"),
                      Text("2"),
                      Text("3"),
                      Text("4"),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }

}
