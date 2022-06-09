import 'dart:convert';

import 'package:fetch_product/models/datamodel.dart';
import 'package:http/http.dart' as http;

class DataServices {
  var url = "https://fakestoreapi.com/products";
  Future<List<DataModel>?> getmethod() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = await json.decode(response.body);
      return List<DataModel>.from(body.map((e) => DataModel.fromJson(e)));
    } else {
      return null;
    }
  }
}
