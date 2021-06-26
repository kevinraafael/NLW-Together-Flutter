import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, this.photoURL});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photoURL: map['photoURL']);
  } // Transformar a string em um map

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  Map<String, dynamic> topMap() => {
        "name": name,
        "photoURL": photoURL,
      };
  String toJson() => jsonEncode(topMap());
}

// //Todo esse processo foi basicamento um data model
// // onde temos nossos dados dart e conseguimos tanto
// transformar uma string e em um objeto em Dart
