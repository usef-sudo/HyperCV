import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hypercv/pages/About/index.dart';
import 'package:hypercv/pages/Home/addvideo.dart';
import 'package:hypercv/pages/Home/index.dart';
import 'package:hypercv/pages/Landing/index.dart';
import 'package:hypercv/pages/Login/index.dart';
import 'package:hypercv/pages/introduction/index.dart';
import 'package:hypercv/pages/splash/index.dart';
import 'pages/Signup/index.dart';
import 'pages/Terms/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: [Locale('ar', 'JO'), Locale('en', 'JO')],
    path: 'lib/locale',
    fallbackLocale: Locale('en', 'JO'),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myAppState();
  }
}

class myAppState extends State<MyApp> {
@override
  Widget build(BuildContext context) {

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
                routes: {
          '/': (BuildContext context) =>  SplashPage(),
          'Home': (BuildContext context) => Home(),
          'Landing': (BuildContext context) => Landing(),
          'Login': (BuildContext context) => Login(),
          'Signup': (BuildContext context) => Signup(),
          'About': (BuildContext context) => About(),
          'Terms': (BuildContext context) => Terms(),
          'addvideo': (BuildContext context) => addvideo(),
          'introduction': (BuildContext context) => introduction(),
        },
      );
  }
}
