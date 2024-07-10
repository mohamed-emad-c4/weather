import 'package:dio/dio.dart';

import '../modles/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);
  Future<WeatherModle?> getWeather( String city) async {
    try {
      Response response = await dio.get(
          'http://api.weatherapi.com/v1/forecast.json?key=41bd6e25de624a96ba5151704240807&q=$city&days=1');
      WeatherModle weathermodel = WeatherModle.fromJson(response.data);
      return weathermodel;
    } on DioException catch (e) {
      // TODO
      print(e);
    }
    return null;
  }
}
