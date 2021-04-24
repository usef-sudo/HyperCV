import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:easy_localization/easy_localization.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  int x =0;
  @override
  void initState() {
    // Future.delayed(Duration.zero, () {
    //   if (0 == 0) {
    //
    //     Navigator.pushNamed(context, "NoMessage");
    //   } else {
    //
    //   }    });

    // TODO: implement initState
    super.initState();
  }
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
body:(x!=0)?Column(children: [
  Center(child: Text("it's look that you donot have any Messages "),),
Container(height: Device.height * 0.022,),
  InkWell(
    onTap: () {
      Navigator.pushNamed(context, "old");
//todo must create user using ali api
//     setState(() {
//       x=1;
//     });

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
          padding:  EdgeInsets.all(Device.height * 0.01),
          child: Container(
              decoration: BoxDecoration(
                  border:
                  Border.all(color: Colors.green[800], width: 1.0),
                  borderRadius:
                  BorderRadius.all(Radius.circular(20.0) //
                  )),
              child: Center(
                  child: Text(
                    "New Messages",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ).tr())),
        ),
      ),
    ),
  ),



],):
ListView(
  children: [

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
                            padding: const EdgeInsets.all(8.0),
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
    ),),
    Container(height: 20,),
    InkWell(
      onTap: () {
//todo must create user using ali api
//     setState(() {
//       x=1;
//     });
        Navigator.pushNamed(context, "old");

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
                      "New Messages",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ))),
          ),
        ),
      ),
    ),
    Container(height: 20,),

  ],
),
    );
  }
}
