import 'package:flutter/material.dart';
import 'package:hypercv/Helpers/Device.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hypercv/pages/Join/AddCV.dart';
import 'package:path/path.dart' as p;

class Join extends StatefulWidget {
  @override
  _JoinState createState() => _JoinState();
}

class _JoinState extends State<Join> {
  PickResult selectedPlace = new PickResult();
  final kInitialPosition = LatLng(31.9500, 35.9333);

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
          title: Text('Complete Profile',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Location",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: Device.height * 0.03),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                Device.width * 0.1, 0, Device.width * 0.1, 0),
            child: Card(
              color: Color.fromRGBO(238, 238, 255, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.all(Device.height * 0.012),
                child: Container(
                    width: Device.width * 0.6,
                    height: Device.height * 0.05,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 35,
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),

                            Text(selectedPlace.formattedAddress ??
                              "Amman,Jordan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))),
              ),
            ),
          ),
          Container(
            height: Device.height * 0.02,
          ),
          InkWell(
            onTap: () {
//todo lang lati

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PlacePicker(
                    apiKey: 'AIzaSyBVrLNOzNCe8mi2Dde4_i1Lj2rlcYSJRzw',
                    initialPosition: kInitialPosition,
                    useCurrentLocation: true,
                    selectInitialPosition: true,

                    usePlaceDetailSearch: true,
                    onPlacePicked: (result) {
                      selectedPlace = result;
                      Navigator.of(context).pop();
                      setState(() {});
                    },
                    forceSearchOnZoomChanged: true,
                    automaticallyImplyAppBarLeading: false,
                    autocompleteLanguage: "ko",
                    region: 'au',
                  //  selectInitialPosition: true,
                    selectedPlaceWidgetBuilder: (_, selectedPlace, state, isSearchBarFocused) {
                      print("state: $state, isSearchBarFocused: $isSearchBarFocused");
                      return isSearchBarFocused
                          ? Container()
                          : FloatingCard(
                              bottomPosition: 0.0, // MediaQuery.of(context) will cause rebuild. See MediaQuery document for the information.
                              leftPosition: 0.0,
                              rightPosition: 0.0,
                              width: 500,
                              borderRadius: BorderRadius.circular(12.0),
                              child: state == SearchingState.Searching
                                  ? Center(child: CircularProgressIndicator())
                                  :Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        Device.width * 0.1, 0, Device.width * 0.1, 0),
                                    child: Card(
                                      color: Color.fromRGBO(238, 238, 255, 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0)),
                                      elevation: 1,
                                      child: Padding(
                                        padding: EdgeInsets.all(Device.height * 0.012),
                                        child: Container(
                                            width: Device.width * 0.6,
                                            height: Device.height * 0.05,
                                            child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      size: 35,
                                                    ),
                                                    Text(
                                                      ":",
                                                      style: TextStyle(
                                                          fontSize: 30, fontWeight: FontWeight.bold),
                                                    ),

                                                    Container(
                                                      width: 100,
                                                      child: Text(selectedPlace.formattedAddress ??
                                                          "Amman,Jordan",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold),
                                                  overflow: TextOverflow.fade,  ),
                                                    ),
                                                  ],
                                                ))),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: InkWell(
                                      onTap: (){print("do something with [selectedPlace] data");
                                      Navigator.of(context).pop();},
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
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    border:
                                                    Border.all(color: Colors.green[800], width: 1.0),
                                                    borderRadius:
                                                    BorderRadius.all(Radius.circular(20.0) //
                                                    )),
                                                child: Center(
                                                    child: Text(
                                                      "Add Location",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold, color: Colors.white),
                                                    ))),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],

                                  ),/* RaisedButton(
                                      child: Text("Pick Here"),
                                      onPressed: () {
                                        // IMPORTANT: You MUST manage selectedPlace data yourself as using this build will not invoke onPlacePicker as
                                        //            this will override default 'Select here' Button.
                                        print("do something with [selectedPlace] data");
                                        Navigator.of(context).pop();
                                      },
                                    ),*/
                            );
                    },
                    // pinBuilder: (context, state) {
                    //   if (state == PinState.Idle) {
                    //     return Icon(Icons.favorite_border);
                    //   } else {
                    //     return Icon(Icons.favorite);
                    //   }
                    // },
                  );
                }),
              );
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
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0) //
                                  )),
                      child: Center(
                          child: Text(
                        "Add Location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ))),
                ),
              ),
            ),
          ),
          Container(
            height: Device.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Video C.V",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: Device.height * 0.03),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                Device.width * 0.1, 0, Device.width * 0.1, 0),
            child: Card(
              color: Color.fromRGBO(238, 238, 255, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.all(Device.height * 0.012),
                child: Container(
                    width: Device.width * 0.8,
                    height: Device.height * 0.06,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (AddCV.CVV != null)
                                ? Stack(
                              children: [
                                Container(
                                    child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(Icons.insert_drive_file),
                                          Text(p.extension(AddCV.CVV.path))
                                        ])),
                              ],
                            ):Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("None",style: TextStyle(fontWeight: FontWeight.bold),),
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
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, 'AddCV');
                                    }))
                          ],
                        ))),
              ),
            ),
          ),
          Container(
            height: Device.height * 0.02,
          ),
          InkWell(
            onTap: () {
//todo must create user using ali api
              Navigator.pushNamed(context, 'AddCV');
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
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0) //
                                  )),
                      child: Center(
                          child: Text(
                        "Add Vedieo CV",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ))),
                ),
              ),
            ),
          ),
          Container(
            height: Device.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Qalifications",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: Device.height * 0.03),
            ),
          ),
          InkWell(
            onTap: () {
//todo must create user using ali api
              Navigator.pushNamed(context, 'Skills');
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
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0) //
                                  )),
                      child: Center(
                          child: Text(
                        "Add Qalifications",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ))),
                ),
              ),
            ),
          ),
          Container(
            height: Device.height * 0.1,
          ),
          InkWell(
            onTap: () {
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
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.green[800], width: 1.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0) //
                                  )),
                      child: Center(
                          child: Text(
                        "JOIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
