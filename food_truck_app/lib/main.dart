// File Name: main.dart
// Purpose: Program shows the home screen of the app
// Version Date: Updated as of 6/4/2020
// Author: Jason Francois
// Dependencies: google_maps_flutter and flutter_sdk

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'mainMenuPage.dart';

void main() => runApp(MyApp()); // Generates the original app

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Completer<GoogleMapController> _controller =
      Completer(); // Initializes Google Maps widget that takes up the home screen

  static const LatLng _center = const LatLng(39.951533,
      -75.195417); //Lattitude/Longitude coordinates for map (University City)

  LatLng _lastMapPosition = _center;
  List<Marker> allMarkers = []; // List of map markers for food trucks
  MapType _currentMapType =
      MapType.normal; //Sets the default map type for the Google Maps widget

  @override
  void initState() {
    // Creates map marker widgets for each food truck
    super.initState();
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker'),
        draggable:
            false, // Prohibits the user from being able to drag the map marker
        //Widget triggered upon user pressing the map marker that prompts a small text window for each food truck displaying the name and location for each truck
        infoWindow: InfoWindow(
            title: "The Chicken Kitchen", snippet: "Location: 33rd and Arch"),
        // Coordinate position for the map marker
        position: LatLng(39.957503, -75.189151)));
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker2'),
        draggable: false,
        infoWindow: InfoWindow(
            title: "Los Compadres", snippet: "Location: 3400 Block of Market"),
        position: LatLng(39.95568, -75.190376)));
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker3'),
        draggable: false,
        infoWindow: InfoWindow(
            title: "Red Stone Pizza",
            snippet: "Location: 3400 Block of Market"),
        position: LatLng(39.95575, -75.190703)));
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker4'),
        draggable: false,
        infoWindow: InfoWindow(
            title: "Friendly Tasty Dishes Halal Food",
            snippet: "Location: 3400 Block of Market"),
        position: LatLng(39.955796, -75.190395)));
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker5'),
        draggable: false,
        infoWindow: InfoWindow(
            title: "Mike's Food Truck",
            snippet: "Location: 3400 Block of Market"),
        position: LatLng(39.955757, -75.190178)));
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker6'),
        draggable: false,
        infoWindow:
            InfoWindow(title: "Andy's", snippet: "Location: 33rd and Arch"),
        position: LatLng(39.957641, -75.189435)));
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker7'),
        draggable: false,
        infoWindow: InfoWindow(
            title: "Wokworks", snippet: "Location: 3400 Block of Market"),
        position: LatLng(39.955721, -75.18981)));
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker8'),
        draggable: false,
        infoWindow: InfoWindow(
            title: "Happy Sunshine", snippet: "Location: 3300 Block of Arch"),
        position: LatLng(39.957592, -75.189187)));
  }

  // Function that changes the map type from default to satellite view
  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  // Function that allows user move around the map and changes position when the user interacts with the screen
  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  // Function that is called whenever the app is ran
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  //Main widget that formats the home screen
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      home: Scaffold(
        appBar: AppBar(
          title: Text('UniTrucks'),
          backgroundColor: Colors.blue[700],
        ),
        body: Stack(
          children: <Widget>[
            // Google Maps widget that loads map and map markers onto the screen
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 15.0,
              ),
              markers: Set.from(allMarkers),
              mapType: _currentMapType,
              onCameraMove: _onCameraMove,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: <Widget>[
                    // Button that when pressed changes the map type
                    FloatingActionButton(
                      heroTag: "btn1",
                      onPressed: _onMapTypeButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.blue,
                      child: const Icon(Icons.map, size: 36.0),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      Builder(builder: (BuildContext context) {
                        // Button that takes the user to a page that lists all the food trucks
                        return FloatingActionButton(
                          heroTag: "btn2",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen()));
                          },
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          backgroundColor: Colors.blue,
                          child: const Icon(Icons.fastfood, size: 36.0),
                        );
                      }),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
