import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';



class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  TextEditingController name;
  TextEditingController emailphone;
  TextEditingController password;
  TextEditingController location;

@override
  void initState() {
  TextEditingController name;

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(      iconTheme: IconThemeData(color: Colors.black),

          backgroundColor: Colors.white,title: Text("Sittings",style: TextStyle(color: Colors.black),),elevation: 0,centerTitle: true,


        ),
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(
                height: Device.height * 0.04,
              ),


              GestureDetector(onTap: (){},
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                  child: TextField(
                    enabled: false,
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
                        hintText: "ABOUT",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              GestureDetector(onTap: (){},
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                  child: TextField(
                    enabled: false,
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
                        hintText: "Contact US",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold),),
              ),

              SizedBox(
                height: Device.height * 0.02,
              ),
              GestureDetector(onTap: (){},
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                  child: TextField(
                    enabled: false,
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
                        hintText: "Edit Your Profile",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              GestureDetector(onTap: (){},
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                  child: TextField(
                    enabled: false,
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
                        hintText: "Notification",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              GestureDetector(onTap: (){},
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                  child: TextField(
                    enabled: false,
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
                        hintText: "Post Portofile",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Account Settings",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              GestureDetector(onTap: (){},
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                  child: TextField(
                    enabled: false,
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
                        hintText: "Member ships",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              GestureDetector(onTap: (){},
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                  child: TextField(
                    enabled: false,
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
                        hintText: "Payment",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              GestureDetector(onTap: (){},
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                  child: TextField(
                    enabled: false,
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
                        hintText: "Sign Out",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
