import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';
import 'package:easy_localization/easy_localization.dart';

class interest extends StatefulWidget {
  @override
  _interestState createState() => _interestState();
}

Widget _buildChip(String label) {
  return Chip(
      labelPadding: EdgeInsets.all(2.0),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Color.fromRGBO(238, 238, 255, 1),
      elevation: 2.0,
      shadowColor: Color.fromRGBO(238, 238, 255, 1),
      padding: EdgeInsets.all(Device.height * 0.01,),
      onDeleted: () {

      }

  );
}

class _interestState extends State<interest> {

  List<Widget> MySkills = new List<Widget>();
  List<String> MySkillss = new List<String>();

  TextEditingController skillc = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(
              Device.height * 0.01,
            ),
            child: InkWell(
              onTap: () {

                Navigator.pop(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                        10.0) //                 <--- border radius here
                    ),
                  ),
                  child: Icon(Icons.arrow_back)),
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding:  EdgeInsets.all(Device.height * 0.01,),
              child: Text("SKIP", style: TextStyle(color: Colors.black)).tr(),
            )
          ],
          title: Text('',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Padding(
              padding:  EdgeInsets.all(Device.height * 0.01,),
              child: Text(
                "Add Interests",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Device.height * 0.03),
              ).tr(),
            ),
          ),

          Container(
            height: Device.height * 0.02,
          ),

          // todo chip ships
          Padding(
            padding:  EdgeInsets.all(Device.height * 0.01,),
            child: chipList(),
          ),

          Container(
            height: Device.height * 0.01,
          ),
          Center(
            child: InkWell(
                onTap: () {
                  // dialog . then setstate and add a chip in myskills
                  showDialog(
                      context: context,
                      builder: (_) => new AlertDialog(
                        title: new Text("Write Your Skill").tr(),
                        content: new TextField(
                          controller: skillc,
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Back').tr(),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text('ADD').tr(),
                            onPressed: () {
                              //  MySkills.add(_buildChip(skillc.text));
                              MySkillss.add(skillc.text);
                              skillc.clear();
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      )).then((value) => setState(
                        () {},
                  ));
                },
                child: Chip(
                  backgroundColor: Color.fromRGBO(238, 238, 255, 1),
                  label: Text("ADD").tr(),
                )),
          ),

          Container(
            height: Device.height * 0.02,
          ),


          InkWell(
            onTap: () {
//todo must create user using ali api
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
                  padding:  EdgeInsets.all(Device.height * 0.01,),
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0) //
                          )),
                      child: Center(
                          child: Text(
                            "Save Interest",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          ).tr())),
                ),
              ),
            ),
          ),

          Container(
            height: Device.height * 0.04,
          ),
        ],
      ),
    );
  }

  chipList() {
    //return Wrap(spacing: 6.0, runSpacing: 6.0, children: MySkills);
    MySkills.clear();
    MySkillss.forEach((element) {MySkills.add(_buildChip(element));});
    return Wrap(spacing: 6.0, runSpacing: 6.0, children: MySkills);
  }


  Widget _buildChip(String label) {
    return Chip(
        labelPadding: EdgeInsets.all(2.0),
        label: Text(
          label,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromRGBO(238, 238, 255, 1),
        elevation: 2.0,
        shadowColor: Color.fromRGBO(238, 238, 255, 1),
        padding: EdgeInsets.all(Device.height * 0.01,),
        onDeleted: () {
          setState((){

            MySkillss.remove(label);

          });
        }

    );
  }
}
