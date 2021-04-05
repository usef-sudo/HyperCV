import 'dart:async';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

import '../../Helpers/Device.dart';
import '../../Offline/DatabaseHelper.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
bool auth = true;
bool login = false;
String Lang = 'EN';
  @override
  void initState() {

    SharedPreferences.getInstance().then((SharedPreferences sp) {

      Lang =sp.getString('Lang');
      auth = sp.getBool('auth');
      login = sp.getBool('login');


    });



    Timer(
        Duration(seconds: 2),
        () => {


    auth!=true?
          Navigator.pushReplacementNamed(context, 'introduction'):
          login==true?
          Navigator.pushReplacementNamed(context, 'Home'):

          Navigator.pushReplacementNamed(context, 'Landing'),


          setState((){}),
        });

    super.initState();
  }

  Widget build(BuildContext context) {
    Device.height = MediaQuery.of(context).size.height;
    Device.width = MediaQuery.of(context).size.width;



    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(

              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: Center(
                    child: Container(
                  width: Device.width /1.2,
                  height: Device.height/2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('lib/assets/download.png',fit: BoxFit.cover,),
                  )
                )),
              )),
        ));
  }
}
