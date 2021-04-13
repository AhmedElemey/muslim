import 'dart:convert';
import 'package:muslim/model/ad3eya.dart';
import 'package:http/http.dart' as http;

class ListServices {
  static const API = 'https://muslim-api.herokuapp.com/api/v1';

  Future<Ad3eya> fetchAd3eya() async {
    final response = await http.get(Uri.parse(API + '/adayaApi/'));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      print(response.body);
      return Ad3eya.fromJson(body);
    } else {
      throw Exception("Unable to perform Request");
    }
  }
}
