import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:shared_preferences/shared_preferences.dart';

class introduction extends StatefulWidget {
  @override
  _introductionState createState() => _introductionState();
}

String dropdownValue = 'English';

class _introductionState extends State<introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        text: 'Select Languge  ||  اختر اللغة ',
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
              child: new Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                elevation: 10,
                child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.all(
                          Radius.circular(20.0),
                        )),
                    width: Device.width / 1.2,
                    child: Padding(
                      padding:
                          EdgeInsets.fromLTRB(Device.height * 0.03, 0, 0, 0),
                      child: MyStatefulWidget(),
                    )),
              ),
            ),
            Container(
              height: Device.height * 0.04,
            ),
            InkWell(
              onTap: () {
//todo must sign user using ali api
                SharedPreferences.getInstance().then((SharedPreferences sp) {
                  if (dropdownValue == 'English') {
                    setState(() {
                      sp.setString('lang', 'EN');
                      sp.setBool('auth', true);
                      //  context.locale = Locale('en', 'JO');

                      EasyLocalization.of(context)
                          .setLocale(Locale("en", "JO"));
                    });
                    Navigator.pushNamed(context, 'Landing');
                  } else {
                    Navigator.pushNamed(context, 'Landing');
                  }
                });
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
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green[800], width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0) //
                                    )),
                        child: Center(
                            child: Text(
                          "Continue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ).tr())),
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
    );
  }
}

// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 0,
        color: Colors.white,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
        SharedPreferences.getInstance().then((SharedPreferences sp) {
          if (dropdownValue == "English") {
            setState(() {
              sp.setString('lang', 'EN');
              sp.setBool('auth', true);
              //  context.locale = Locale('en', 'JO');

              EasyLocalization.of(context).setLocale(Locale("en", "JO"));
            });
          } else {
            setState(() {
              sp.setString('lang', 'AR');
              //  context.locale = Locale('ar', 'JO');
              sp.setBool('auth', true);

              EasyLocalization.of(context).setLocale(Locale("ar", "JO"));
            });
          }
        });
      },
      items: <String>['English', 'عربية']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding:  EdgeInsets.all(Device.height*0.02),
            child: Text(value),
          ),
        );
      }).toList(),
    );
  }
}
