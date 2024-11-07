import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconData;

  NavigationItem(this.iconData);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    //NavigationItem(Icons.calendar_today),
    NavigationItem(Icons.person),
  ];
}

class Car {

  String brand;
  String model;
  double price;
  String rent;
  List<String> images;

  Car(this.brand, this.model, this.price, this.rent, this.images);

}

List<Car> getCarList(){
  return <Car>[
    Car(
      "Toyota",
      "Fortuner",
      2000,
      "Monthly",
      [
        "assets/images/fortuner_0.png",
        "assets/images/fortuner_1.png",
        "assets/images/fortuner_2.png",
        "assets/images/fortuner_3.png",
      ],
    ),
    Car(
      "Hyundai",
      "Creta",
      1800,
      "Weekly",
      [
        "assets/images/creta.png",
      ],
    ),
    Car(
      "Maruti",
      "Swift",
      1100,
      "Daily",
      [
        "assets/images/swift.png",
      ],
    ),
    Car(
      "Hyundai",
      "Verna",
      1700,
      "Daily",
      [
        "assets/images/verna.png",
      ],
    ),
  ];
}

class Dealer {

  String name;
  String image;


  Dealer(this.name, this.image);

}

List<Dealer> getDealerList(){
  return <Dealer>[
    Dealer(
      "Toyota",
      "assets/images/toyota.png",
    ),
    Dealer(
      "Suzuki",
      "assets/images/suzuki.png",
    ),
    Dealer(
      "Hyundai",
      "assets/images/hyundai.jpg",
    ),
    Dealer(
      "Tata",
      "assets/images/tata.jpg",
    ),
  ];
}


class Filter {

  String name;

  Filter(this.name);

}

List<Filter> getFilterList(){
  return <Filter>[
    Filter("Highest Price"),
    Filter("Lowest Price"),
  ];
}