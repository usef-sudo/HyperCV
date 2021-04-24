import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  TextEditingController name;
  TextEditingController emailphone;
  TextEditingController password;
  TextEditingController location;
  String lang = 'AR';
@override
  void initState() {
  SharedPreferences.getInstance().then((SharedPreferences sp) async {
    setState(() {
      lang = sp.getString('lang') ?? 'EN';
    });
  });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(     iconTheme: IconThemeData(color: Colors.black),

          backgroundColor: Colors.white,title: Text("Settings",style: TextStyle(color: Colors.black),).tr(),elevation: 0,centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.all(
              Device.height * 0.02,
            ),
            child: InkWell(onTap: (){Navigator.pop(context);},
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                        Device.height*0.032) //                 <--- border radius here
                    ),
                  ),
                  child: Icon(Icons.arrow_back)),
            ),
          ),

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
                        hintText: (lang=='AR')?"من نحن":"ABOUT",
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
                        hintText: (lang=='AR')?"تواصل معنى":"Contact US",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold),).tr(),
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
                        hintText: (lang=='AR')?"تعديل الملف لشخصي":"Edit Your Profile",
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
                        hintText: (lang=='AR')?"التنبيهات":"Notification",
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
                        hintText: (lang=='AR')?" انشر بورتوفايل":"Post Portofile",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Account Settings",style: TextStyle(fontWeight: FontWeight.bold),).tr(),
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
                        hintText: (lang=='AR')?"الاشتراكات":"Member ships",
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
                        hintText: (lang=='AR')?"الدفع":"Payment",
                        fillColor: Color.fromRGBO(238, 238, 255, 1)),

                  ),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              GestureDetector(onTap: (){
                Navigator.pushReplacementNamed(context, 'Login');
              },
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
                        hintText: (lang=='AR')?"تسجسل الخروج":"Sign Out",
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
