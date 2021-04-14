import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:easy_localization/easy_localization.dart';
class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackPressed(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(
                height: Device.height * 0.04,
              ),
              Center(
                child: Container(
                  height: Device.height * 0.3,
                  width: Device.width * 0.8,
                  decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius: new BorderRadius.all(
                        Radius.circular(30.0),
                      )),
                  child: Image.asset('lib/assets/download.png'),
                ),
              ),
              SizedBox(
                height: Device.height * 0.04,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Appear your best to tell about yourself  ',
                          style: TextStyle(
                              fontSize: Device.height * 0.025,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    Device.width * 0.1, 0, Device.width * 0.1, 0),
                child: Card(
                  color: Color.fromRGBO(238, 238, 255, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.all(Device.height * 0.012),
                    child: Container(
                        width: Device.width * 0.6,
                        height: Device.height * 0.07,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(

                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.email, size: 35,),
                                Text(
                                  "LogIn with Email",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all(width: 1.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0) //
                                        //          <--- border radius here
                                      ),
                                    ),
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, 'Login');
                                        }))
                              ],
                            ))),
                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    Device.width * 0.1, 0, Device.width * 0.1, 0),
                child: Card(
                  color: Color.fromRGBO(238, 238, 255, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.all(Device.height * 0.012),
                    child: Container(
                        width: Device.width * 0.6,
                        height: Device.height * 0.07,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/originals/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg"), // no matter how big it is, it won't overflow
                                ),
                                Text(
                                  "LogIn with Google",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all(width: 1.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0) //
                                        //          <--- border radius here
                                      ),
                                    ),
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, 'login');
                                        }))
                              ],
                            ))),
                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    Device.width * 0.1, 0, Device.width * 0.1, 0),
                child: Card(
                  color: Color.fromRGBO(238, 238, 255, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.all(Device.height * 0.012),
                    child: Container(
                        width: Device.width * 0.6,
                        height: Device.height * 0.07,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/originals/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg"), // no matter how big it is, it won't overflow
                                ),
                                Text(
                                  "LogIn with LinkedIn",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all(width: 1.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0) //
                                        //          <--- border radius here
                                      ),
                                    ),
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, 'login');
                                        }))
                              ],
                            ))),
                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    Device.width * 0.1, 0, Device.width * 0.1, 0),
                child: Card(
                  color: Color.fromRGBO(238, 238, 255, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.all(Device.height * 0.012),
                    child: Container(
                        width: Device.width * 0.6,
                        height: Device.height * 0.07,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/originals/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg"), // no matter how big it is, it won't overflow
                                ),
                                Text(
                                  "LogIn with Facebook",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all(width: 1.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0) //
                                        //          <--- border radius here
                                      ),
                                    ),
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, 'login');
                                        }))
                              ],
                            ))),
                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Container(
                height: Device.height * 0.02,
              ),
              InkWell(
                onTap: () {
                  Device.welcome=true;
//todo must sign user using ali api
                  Navigator.pushNamed(context, 'Home');
                },
                child: Center(
                  child: Container(
                    height: Device.height * 0.07,
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
                              border: Border.all(
                                  color: Colors.green[800], width: 1.0),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0) //
                              )),
                          child: Center(
                              child: Text(
                                "Continue As Guest",
                                style: TextStyle(
                                    color: Colors.white),
                              ))),
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: Device.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?').tr(),
        content: new Text('Do you want to exit the App').tr(),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: Text("no").tr(),
          ),
          SizedBox(height: Device.height * 0.01),
          new GestureDetector(
            onTap: () => Navigator.of(context).pop(true),
            child: Text("yes").tr(),
          ),
        ],
      ),
    );
  }
}
