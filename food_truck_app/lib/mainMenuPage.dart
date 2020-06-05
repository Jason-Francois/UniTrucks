// File Name: mainMenuPage.dart
// Purpose: Program that shows the a screen listing all of the food trucks that are on the app
// Version Date: Updated as of 6/4/2020
// Author: Jason Francois and Mohammed Abdel-Moomen
// Dependencies: google_maps_flutter,flutter_sdk, cupertino_icons

import 'package:flutter/material.dart';
import 'foodTruckMenus.dart';

// FoodTruck class that contains information for each food truck
class FoodTruck {
  String name;
  String description;
  String iconPic;
  String menuPic;
  Widget screenPage;
  // Constructor
  FoodTruck(
      {this.name,
      this.description,
      this.iconPic,
      this.menuPic,
      this.screenPage}) {
    this.name = name; // Name of truck
    this.description = description; // Caption for food truck
    this.iconPic = iconPic; // Picture shown on the main menu page
    this.menuPic = menuPic; // Picture of food truck's menu
    this.screenPage = screenPage; // Widget that shows food truck menu
  }
}

// List of Food truck information
List<FoodTruck> trucks = [
  FoodTruck(
      name: "Los Compadres",
      description: "Best tacos in town!",
      iconPic: "taco.png",
      menuPic: "losCompadresMenu.png",
      screenPage: LosCompadres()),
  FoodTruck(
      name: "Red Stone Pizza",
      description: "Nobody beats our pizza!",
      iconPic: "pizza.png",
      menuPic: "redStonePizzaMenu.png",
      screenPage: RedStonePizza()),
  FoodTruck(
      name: "Friendly Tasty Dishes Halal Food",
      description: "Our halal is crazy delicious!",
      iconPic: "falafel.png",
      menuPic: "friendlyHalalMenu.png",
      screenPage: FriendlyHalal()),
  FoodTruck(
      name: "Mike's Food Truck",
      description: "Can't go wrong with our burgers!",
      iconPic: "hamburger.png",
      menuPic: "mikesFoodTruckMenu.png",
      screenPage: MikesFoodTruck()),
  FoodTruck(
      name: "Andy's",
      description: "Best food in town!",
      iconPic: "chinesefood1.png",
      menuPic: "andysMenu.png",
      screenPage: Andys()),
  FoodTruck(
      name: "Wokworks",
      description: "Asian cuisine on the go!",
      iconPic: "ramen.png",
      menuPic: "wokWorksMenu.png",
      screenPage: WokWorks()),
  FoodTruck(
      name: "Happy Sunshine",
      description: "Greatest Cheesesteaks ever!",
      iconPic: "cheesesteak.png",
      menuPic: "happySunshineMenu.png",
      screenPage: HappySunshine()),
  FoodTruck(
      name: "The Chicken Kitchen",
      description: "Our chicken is amazing!",
      iconPic: "chicken.png",
      menuPic: "chickenKitchenMenu.png",
      screenPage: ChickenKitchen()),
];

// Widget that shows screen that lists all food Trucks
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Trucks"),
      ),
      body: ListView.builder(
          // Widget that generates list of all food trucks
          itemCount: trucks.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                    // Function that takes the user to the corresponding menu page when a certain food truck Card widget is pressed
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => trucks[index].screenPage));
                    },
                    // Formats the card widget for each food truck displaying the truck's name with an icon pic right next to it.
                    title: Text(trucks[index].name),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/${trucks[index].iconPic}'),
                    )));
          }),
    );
  }
}
