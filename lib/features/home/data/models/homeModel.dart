// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);


// Model feito com o quicktype.io

import 'dart:convert';

class HomeModel {
    int param1;

    HomeModel({
        this.param1,
    });

    factory HomeModel.fromRawJson(String str) => HomeModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        param1: json["param1"] == null ? null : json["param1"],
    );

    Map<String, dynamic> toJson() => {
        "param1": param1 == null ? null : param1,
    };
}
