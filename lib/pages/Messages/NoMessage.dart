import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';

class NoMessage extends StatefulWidget {
  @override
  _NoMessageState createState() => _NoMessageState();
}

class _NoMessageState extends State<NoMessage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(      iconTheme: IconThemeData(color: Colors.black),

        backgroundColor: Colors.white,title: Text("Ali Mohammed",style: TextStyle(color: Colors.black),),elevation: 0,centerTitle: true,

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
          Expanded(flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(flex: 8,child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.fromLTRB(
                    Device.width * 0.05, 0, Device.width * 0.05, 0),
                child: Align(
                  alignment: (index%2==0)?Alignment.centerRight:Alignment.centerLeft,
                  child: Container(
                    width: 200,
                    child: Card(
                      elevation: 5,
                      color:(index%2==0)? Colors.green[100]:Colors.white,
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
                                  leading: Padding(

                                    padding: const EdgeInsets.all(8.0),
                                    child:(index%2==0)?Text("ME"): CircleAvatar(
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
                                  isThreeLine: true,
                                  subtitle:    Text(
                                    "love you \n 20 seconds ago",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )

                            )),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),),

          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(Device.width * 0.05, 0, Device.width * 0.05, 0),
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
                        width: Device.width * 0.8,
                        height: Device.height * 0.1,
                        child:Row(children: [
                          Flexible(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(maxLines: 5,decoration: InputDecoration(
                                  hintText: 'Send Message ...',
                                ),

                                  style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.bold),
                                )),
                          ),
                          Icon(Icons.send)
                        ],) ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
      ,

    );
  }
}
