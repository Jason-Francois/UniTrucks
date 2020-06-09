// File Name: foodTruckMenus.dart
// Purpose: Program that contains screens for each food truck that shows the food truck's menu
// Version Date: Updated as of 6/4/2020
// Author: Jason Francois
// Dependencies: google_maps_flutter and flutter_sdk

import 'package:flutter/material.dart';
import 'mainMenuPage.dart';

// Menu Screen for Los Compadres (same format for the other trucks)
class LosCompadres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // App bar that appears at the top of the screen
        appBar: AppBar(
          title: Text("Los Compadres"),
          backgroundColor: Colors.red,
        ),
        // Sets background color of page
        backgroundColor: Colors.white,
        body: Container(
          // Widget that displays the picture of the food truck's menu
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/${trucks[0].menuPic}'),
          )),
        ));
  }
}

// Menu Screen for Red Stone Pizza
class RedStonePizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Red Stone Pizza"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/${trucks[1].menuPic}'),
          )),
        ));
  }
}

// Menu Screen for Friendly Halal
class FriendlyHalal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Friendly Tasty Dishes Halal Food"),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/${trucks[2].menuPic}'),
          )),
        ));
  }
}

// Menu Screen for Mike's Food Truck
class MikesFoodTruck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mike's Food Truck"),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/${trucks[3].menuPic}'),
          )),
        ));
  }
}

// Menu Screen for Andy's
class Andys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Andy's"),
          backgroundColor: Colors.green[900],
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/${trucks[4].menuPic}'),
          )),
        ));
  }
}

// Menu Screen for Wokworks
class WokWorks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wokworks"),
          backgroundColor: Colors.pink[200],
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/${trucks[5].menuPic}'),
          )),
        ));
  }
}

// Menu Screen for Happy Sunshine
class HappySunshine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Happy Sunshine"),
          backgroundColor: Colors.yellow[700],
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/${trucks[6].menuPic}'),
          )),
        ));
  }
}

// Menu Screen for The Chicken Kitchen
class ChickenKitchen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("The Chicken Kitchen"),
          backgroundColor: Colors.amber[900],
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/${trucks[7].menuPic}'),
          )),
        ));
  }
}
