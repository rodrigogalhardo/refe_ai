// To parse this JSON data, do
//
//     final signModel = signModelFromJson(jsonString);

import 'dart:convert';

SignModel signModelFromJson(String str) => SignModel.fromJson(json.decode(str));

String signModelToJson(SignModel data) => json.encode(data.toJson());

class SignModel {
  int id;
  String email;
  String password;
  bool status;

  SignModel({
    this.id,
    this.email,
    this.password,
    this.status,
  });

  factory SignModel.fromJson(Map<String, dynamic> json) => SignModel(
        id: json["id"],
        email: json["Email"],
        password: json["Password"],
        status: json["Status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Email": email,
        "Password": password,
        "Status": status,
      };
}
