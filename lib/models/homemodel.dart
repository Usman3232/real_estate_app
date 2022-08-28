import 'package:flutter/material.dart';

class HomeModel {
  final String image, title, location;
  final double price;
  bool checkstatus;

  HomeModel({
    required this.image,
    this.checkstatus = false,
    required this.title,
    required this.location,
    required this.price,
  });
}

List<HomeModel> home_model = [
  HomeModel(
      image: "assets/images/furnishedhome1.jpg",
      title: 'Mighty Cinco Family',
      location: "Jakarta, Indonasia",
      price: 436),
  HomeModel(
    image: "assets/images/furnishedhome2.jpg",
    title: "Family Cinco",
    location: "Lahore",
    price: 128,
  ),
  HomeModel(
    image: "assets/images/furnishedhome3.jpg",
    title: "Master Roshi",
    location: 'Islamabad',
    price: 222,
  )
];
