import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}
class _searchState extends State<search> {
  List<String> facebookuser = new List<String>();
  TextEditingController _search = new TextEditingController();
  @override
  void initState() {
    facebookuser.add("1");
    facebookuser.add("2");
    // TODO: implement initState
    super.initState();
  }

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
          title: Text('Discover',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white),
      body: SafeArea(
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
                Padding(
                  padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                  child: TextField(
                    controller:  _search,
                    decoration: new InputDecoration(

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),

                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),

                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        filled: true,


                        hintStyle: new TextStyle(color: Colors.grey[600]),
                        hintText: "Search..",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),
                  ),
                ),                Container(
                  height: 15,
                ),

                // the tab bar with two items
                SizedBox(
                  height: 50,
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    bottom: TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      isScrollable: true,
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Tab(
                          //    icon: Icon(Icons.directions_bike),
                          child: Text(
                            "UI Designer",
                          ),
                        ),
                        Tab(
                          //    icon: Icon(Icons.directions_bike),
                          child: Text("UX Designer"),
                        ),
                        Tab(
                          child: Text("Graphic"),
                        ),
                        Tab(
                          //    icon: Icon(Icons.directions_bike),
                          child: Text("Flutter"),
                        ),
                      ],
                    ),
                  ),
                ),

                // create widgets for each tab bar here
                Expanded(
                  child: TabBarView(
                    children: [
                      CardBuilder(facebookuser),
                      CardBuilder(facebookuser),
                      CardBuilder(facebookuser),
                      CardBuilder(facebookuser),
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

Widget CardBuilder(List<String> ll) {
  return Expanded(
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: ll.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(Device.height * 0.01),
          child: Center(
            child: Container(
                height: Device.height * 0.27,
                width: Device.width * 0.9,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.all(
                      Radius.circular(30.0),
                    )),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,

                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://pics.freeicons.io/uploads/icons/png/2659939281579738432-512.png"), // no matter how big it is, it won't overflow
                        ),
                        title: Text(
                          "Ali Mohammad",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "1234567456789",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.all(
                                          Radius.circular(70.0),
                                        )),
                                    width: 140,
                                    height: 50,
                                    child: Center(
                                        child: Text(
                                          "See Portfolio",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        )),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.messenger,
                                  color: Colors.grey,
                                ),
                                decoration: new BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: new BorderRadius.all(
                                      Radius.circular(10.0),
                                    )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        );
      },
    ),
  );
}