import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? userId, email, name, id;
  int? number;

  UserModel(
      {required this.userId,
      required this.email,
      required this.name,
      required this.number,
      required this.id});

  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }

    userId = map['userId'];
    email = map['email'];
    name = map['name'];
    id = map['id'];
    number = map['number'];
  }

  toJson() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'id': id,
      'number': number
    };
  }
}
