import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';

import 'drawer.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: (){

          Navigator.pushNamed(context, 'search');


        }),IconButton(icon: Icon(Icons.messenger_outline,color: Colors.black,), onPressed: (){})],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Device.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Device.width * 0.1, 0, Device.width * 0.1, 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Text("JOBs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(

                        decoration: BoxDecoration(
                          color:  Color.fromRGBO(238, 238, 255, 1),
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(
                              10.0) //                 <--- border radius here
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.notifications,color: Colors.green,),
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
                          child: Icon(Icons.search,color: Colors.green,),
                        )),
                  ),
                ),
              ],)
            ],)
          ),

        ],
      ),
    );
  }
}
