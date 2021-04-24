import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:easy_localization/easy_localization.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.menu_open,
                  color: Colors.grey,
                  size: 30,
                )),
          ),
          SizedBox(
            height: Device.height * 0.05,
          ),
          (Device.drawerIndex == 0)
              ? ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline),
                  ).tr(),
            onTap: (){                      Navigator.pop(context);
            },
                )
              : ListTile(
                  title: Text("Home").tr(),
                  onTap: () {
                    setState(() {
                      Device.drawerIndex = 0;
                      Navigator.pop(context);
                    });
                  },
                ),
          (Device.drawerIndex == 1)
              ? ListTile(
                  title: Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline),
                  ).tr(),
            onTap: (){

                    Navigator.pop(context);
                    Navigator.pushNamed(context, 'settings');

            },
                )
              : ListTile(
                  title: Text("Settings").tr(),
            onTap: () {
              setState(() {
                Device.drawerIndex = 1;
                Navigator.pop(context);

              });
            },
                ),
          (Device.drawerIndex == 2)
              ? ListTile(
                  title: Text(
                    "About Hyper CV",
                    style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline),
                  ).tr(),
onTap: (){
  Navigator.pop(context);
  Navigator.pushNamed(context, "About");
},
                )
              : ListTile(
                  title: Text("About Hyper CV").tr(),
            onTap: () {
              setState(() {
                Device.drawerIndex = 2;
                Navigator.pop(context);
                Navigator.pushNamed(context, "About");

              });
            },
                ),
          (Device.drawerIndex == 3)
              ? ListTile(
                  title: Text(
                    "LogOut",
                    style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline),
                  ).tr(),
                )
              : ListTile(
                  title: Text("LogOut").tr(),
            onTap: () {
              Navigator.pop(context);

              setState(() {
                Device.drawerIndex = 3;
              });
              Navigator.pushReplacementNamed(context, 'Login');
            },
                ),
        ],
      ),
    );
  }
}
