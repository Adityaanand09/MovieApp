import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
Map datafina;
List userData;
//final String typedName;
class Moviefunction {
 // Moviefunction(this.typedName);

  Future getData(String typedName) async {
    http.Response response = await http.get(
        "http://www.omdbapi.com/?apikey=a8d4e68f&s="+typedName);
    if (response.statusCode == 200) {
      String data = response.body;
      datafina = jsonDecode(data);
      userData = datafina['Search'];
      return userData;
      // print(userData)
    }
    else
      print(response.statusCode);
  }
}