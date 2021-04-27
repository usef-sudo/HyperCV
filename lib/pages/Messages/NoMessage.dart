import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NoMessage extends StatefulWidget {
  @override
  _NoMessageState createState() => _NoMessageState();
}

class _NoMessageState extends State<NoMessage> {
  String lang ="EN";
  @override
  void initState() {
    // TODO: implement initState

    SharedPreferences.getInstance().then((SharedPreferences sp) async {
      setState(() {
        lang = sp.getString('lang') ?? 'EN';
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Ali Mohammed",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
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
      ),
      body: Column(
        children: [

          Expanded(
            flex: 8,
            child: Container(
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(
                        Device.width * 0.05, 0, Device.width * 0.05, 0),

                    child:Align( alignment: (index % 2 == 0)
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child:  Bubble("HInijqn/n\ncijwdncijxqwns eijndiwendoi2en oieodjeow\nidjowiej","12 min ago",true,(index % 2 == 0)?true:false))

                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  Device.width * 0.00, 0, Device.width * 0.00, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(Device.height * 0.0),
                  child: Container(
                      // width: Device.width * 0.95,
                      // height: Device.height * 0.15,
                      child: Row(
                        children: [
                          Flexible(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: (lang=='EN')?'Send Message ...':"ارسل رسالة",
                                  ),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          InkWell(onTap: () {}, child: Icon(Icons.send))
                        ],
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Bubble extends StatelessWidget {
  Bubble(this.message, this.time, this.delivered, this.isMe);

  final String message, time;
  final delivered, isMe;

  @override
  Widget build(BuildContext context) {
    final bg = isMe ? Colors.green[100] : Colors.white;
    final icon = delivered ? Icons.done_all : Icons.done;
    final radius = isMe
        ? BorderRadius.only(
      topRight: Radius.circular(5.0),
      bottomLeft: Radius.circular(10.0),
      bottomRight: Radius.circular(5.0),
    )
        : BorderRadius.only(
      topLeft: Radius.circular(5.0),
      bottomLeft: Radius.circular(5.0),
      bottomRight: Radius.circular(10.0),
    );
    return Column(
      children: <Widget>[
        Container(
          width: Device.width*0.7,
          margin: const EdgeInsets.all(3.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: .5,
                  spreadRadius: 1.0,
                  color: Colors.black.withOpacity(.12))
            ],
            color: bg,
            borderRadius: radius,
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: isMe?50.0:0,bottom: 15,left: isMe?0:50.0 ),
                child: Text(message),
              ),
            isMe?  Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Row(
                  children: <Widget>[
                    Text(time,
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 10.0,
                        )),
                    SizedBox(width: 3.0),
                    Icon(
                      icon,
                      size: 12.0,
                      color: Colors.black38,
                    )
                  ],
                ),
              ) : Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Row(
                children: <Widget>[
                  Text(time,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 10.0,
                      )),
                  SizedBox(width: 3.0),
                  Icon(
                    icon,
                    size: 12.0,
                    color: Colors.black38,
                  )
                ],
              ),
            ) ,
              isMe? Positioned(
                top: 0.0,
                right: 0.0,
                child:  Text("ME")

              ): Positioned(
                top: 0.0,
                left: 0.0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,

                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Linkedin.svg/1200px-Linkedin.svg.png"), // no matter how big it is, it won't overflow
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
