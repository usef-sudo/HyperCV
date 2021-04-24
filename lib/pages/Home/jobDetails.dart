import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:easy_localization/easy_localization.dart';

import 'drawer.dart';

class JobDetails extends StatefulWidget {
  @override
  _JobDetailsState createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  bool isremote=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Job",
          style: TextStyle(color: Colors.black),
        ).tr(),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Job",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: Device.width * 0.028),
                  ).tr(),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(Device.width * 0.01),
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
                                padding:  EdgeInsets.all(Device.width * 0.01),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.green,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(Device.width * 0.01),
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
                                padding:  EdgeInsets.all(Device.width * 0.01),
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
            height: Device.width * 0.022,
          ),


          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  Device.width * 0.05, 0, Device.width * 0.05, 0),
              child: Card(
                  color: Color.fromRGBO(238, 238, 255, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.all(Device.height * 0.012),
                    child: Container(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child:

                            Column(
                              children: [
                                ListTile(
                                  leading: Padding(
                                    padding:  EdgeInsets.all(Device.width * 0.01),
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
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("""#جورج_وسوف​
#أجمل_أغاني_جورج_وسوف​
جورج وسوف


قديم الوسوف 1985 
 Relax In / 1985 

© UMG ( EMI ARABIA ) 

® Remastered By 
Walid Yusuf Jado
2020
Exclusive Version."""),
                                )
                              ],

                            )

                        )),
                  ),
                ),
              ),
            ),
          Container(height: Device.width * 0.022,),
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
                  padding:  EdgeInsets.all(Device.width * 0.01),
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0) //
                          )),
                      child: Center(
                          child: Text(
                            "Fast Apply",
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
}
