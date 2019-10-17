import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:convert';

class GenericRepository {
  String baseURL = "https://picsum.photos/";
  Future Post(dynamic dataModel, String path) async {
    var url = "https://picsum.photos/v2/list?page=2&limit=100";
    var _data = jsonEncode(dataModel);
    Response response = await Dio().post(url, data: dataModel);
    print(dataModel.toString());
    print(url);
    return response.data;
  }

  Future Get(String path) async {
    var url = "${baseURL}$path";
    Response response = await Dio().get(url);
    return response.data;
  }
}
