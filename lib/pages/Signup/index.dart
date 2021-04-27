import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:easy_localization/easy_localization.dart';

import '../../Helpers/Device.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String lang = 'AR';
  TextEditingController name;
  TextEditingController emailphone;
  TextEditingController password;
  TextEditingController location;
  @override
  void initState() {

    name =TextEditingController();
    emailphone =TextEditingController();
    password =TextEditingController();
    location =TextEditingController();
    SharedPreferences.getInstance().then((SharedPreferences sp) async {
      setState(() {
        lang = sp.getString('lang') ?? 'EN';
      });
    });

    super.initState();
  }

  Widget build(BuildContext context) {

    return SafeArea(
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
                          text: (lang=='EN')? 'By Signing Up you agree to the  ':"بالتسجيل انت تتفق مع ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: (lang=='EN')? ' Terms of Service':"قوانين الخدمات",
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, 'Terms');
                            }),
                    ],
                  ),
                ),


              ),
              SizedBox(
                height: Device.height * 0.04,
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                child: TextField(
                  controller: name,
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
                      hintText: (lang=='EN')? "Full Name":"الاسم كامل",
                      fillColor: Color.fromRGBO(238, 238, 255, 1)),

                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                child: TextField(
                  controller:  emailphone,
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
                      hintText:(lang=='EN')? 'Email':"البريد الالكتروني",
                      fillColor: Color.fromRGBO(238, 238, 255, 1)),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                child: TextField(
                  controller: password,
                  obscureText: true,
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
                      hintText: (lang=='EN')? 'password':"كلمة السر",
                      fillColor: Color.fromRGBO(238, 238, 255, 1)),
                ),
              ),
              SizedBox(
                height: Device.height * 0.02,
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(Device.width*0.1,0,Device.width*0.1,0),
                child: TextField(
                  controller: location,

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
                      hintText:(lang=='EN')? 'ADD Location':"اضافة موقع",
                      fillColor: Color.fromRGBO(238, 238, 255, 1)),
                ),
              ),
              Container(
                height: Device.height * 0.04,
              ),
              InkWell(
                onTap: (){
//todo must create user using ali api
                    Navigator.pushNamed(context, 'Join');
                },

                child: Center(
                  child: Container(
                    height: Device.height * 0.1,
                    width: Device.width * 0.8,
                    decoration: new BoxDecoration(
                        color: Colors.black,
                        borderRadius: new BorderRadius.all(
                          Radius.circular(20.0),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.green[800],
                              width: 1.0
                          ),
                          //todo
                          borderRadius: BorderRadius.all(
                              Radius.circular(20.0) //
                          )),child: Center(child: Text("JOIN",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),).tr())),
                    ),
                  ),
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
                          text:(lang=='EN')? 'Already User? ':"لديك حساب ؟",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: (lang=='EN')?' LogIn Now!':"سجل الان ",
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, 'Login');
                            }),
                    ],
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
}
