import 'package:http/http.dart';
import 'dart:convert';

//create class NetworkHelper
class NetworkHelper {
  //this class require String data (openweather api url)
  NetworkHelper(this.url);
  final String url;

  //wait for url
  //return response body/status code
  Future getData() async {
    Response response = await get(Uri.parse(url));
    //print(response.body);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
