import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(
              Device.height * 0.02,
            ),
            child: InkWell(onTap: (){Navigator.pop(context);},
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
        centerTitle: true,
        title: Text('About Hyper CV',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white),
    );
  }
}
