import 'package:flutter/material.dart';

class MessagePage {
  String title;
  String subtitle;
  String Message;
  String image;
  String time;
  MessagePage(
      {required this.title,
      required this.image,
      required this.subtitle,
      required this.time,
      this.Message = "sammed"});
}

List<MessagePage> messagepage = [
  MessagePage(
      title: 'Leandru Store',
      image: 'image',
      subtitle: 'We are so Excited',
      time: "12:00"),
  MessagePage(
      title: 'Blender Store',
      image: 'image',
      subtitle: 'render with cycles',
      time: "9:09"),
  MessagePage(
      title: 'Phone Store',
      image: 'image',
      subtitle: 'phone has been shipped',
      time: "4:20"),
  MessagePage(
      title: 'Unreal Store',
      image: 'image',
      subtitle: 'metahuman is  here ',
      time: "3:40"),
  MessagePage(
      title: 'Sammed Store',
      image: 'image',
      subtitle: 'Trial from leandru',
      time: "8:08"),
  MessagePage(
      title: 'Gaming Store',
      image: 'image',
      subtitle: 'Doing what i can',
      time: "1:20"),
];
