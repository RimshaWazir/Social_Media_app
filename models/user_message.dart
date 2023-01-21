import 'package:flutter/material.dart';

class UserMessage {
  int id;
  String name;
  String img;
  String message;
  String createdAt;
  String messageNotification;
  UserMessage({
    required this.id,
    required this.name,
    required this.img,
    required this.message,
    required this.createdAt,
    required this.messageNotification,
  });

  factory UserMessage.fromJson(Map<String, dynamic> json) => UserMessage(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        message: json["message"],
        createdAt: json["created_at"],
        messageNotification: json["message_notification"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
        "message": message,
        "created_at": createdAt,
        "message_notification": messageNotification,
      };
}
