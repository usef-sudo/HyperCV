import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:easy_localization/easy_localization.dart';

class old extends StatefulWidget {
  @override
  _oldState createState() => _oldState();
}

class _oldState extends State<old> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(      iconTheme: IconThemeData(color: Colors.black),

        backgroundColor: Colors.white,title: Text("Messages",style: TextStyle(color: Colors.black),).tr(),elevation: 0,centerTitle: true,
        actions: [
          Padding(
            padding:  EdgeInsets.all(Device.height * 0.01),
            child: Icon(Icons.search),
          )
        ],
        leading: Padding(
          padding: EdgeInsets.all(
            Device.height * 0.02,
          ),
          child: InkWell(onTap: (){Navigator.pop(context);},
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
      ),
      body: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.all(Device.height * 0.01),
            child: Text("Select a person to message",style: TextStyle(fontWeight: FontWeight.bold,fontSize: Device.height*0.03),).tr(),
          ),
          Expanded(child: ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.fromLTRB(
                    Device.width * 0.05, 0, Device.width * 0.05, 0),
                child: InkWell(onTap: (){
                  Navigator.pushNamed(context, "NoMessage");
                },
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: EdgeInsets.all(Device.height * 0.012),
                      child: Container(
                          height: Device.height * 0.09,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child:

                              ListTile(
                                trailing: Text("20 seconds ago"),
                                leading: Padding(

                                  padding:  EdgeInsets.all(Device.height * 0.01),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,

                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Linkedin.svg/1200px-Linkedin.svg.png"), // no matter how big it is, it won't overflow
                                  ),
                                ),
                                title:   Text(
                                  "Ali Gassan",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ) ,
                                subtitle:    Text(
                                  "love you",
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
          ),)
        ],
      ),
    );
  }
}
