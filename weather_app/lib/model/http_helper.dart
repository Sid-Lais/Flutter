import 'package:weather_app/model/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper {
  //https://api.openweathermap.org/data/2.5/weather?lat=28.4595&lon=77.0266&appid=e77e558e80f3b53249ddb36c055b14f9
  //https://api.openweathermap.org/data/2.5/weather?q=Gurgaon&appid=e77e558e80f3b53249ddb36c055b14f9
  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = '033e9252847015839fe2295266abe3ef';

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parameter = {
      // 'lat': latitude,
      // 'lon': longitude,
      'q': location,
      'appId': apiKey
    };

    Uri uri = Uri.https(authority, path, parameter);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weatherData = Weather.fromJson(data);
    // print(result.body);
    //return result.body;
    return weatherData;
  }
}
