import 'package:flutter/material.dart';

class MessageModel {
  final String img, title, message, time;

  MessageModel(
      {required this.img,
      required this.title,
      required this.message,
      required this.time});
}

List<MessageModel> message_model = [
  MessageModel(
    img: "assets/images/furnishedhome3.jpg",
    title: 'Dania',
    message: 'oh hello william..',
    time: '23:15',
  ),
  MessageModel(
      img: 'assets/images/furnishedhome2.jpg',
      title: 'Silvian Sestre',
      message: 'hey my friend, how are you',
      time: '12:30'),
];
