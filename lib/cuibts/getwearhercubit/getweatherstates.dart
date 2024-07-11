import 'package:weather/modles/weather_model.dart';

class WeatherStates {}

class NOGetWeatherstate extends WeatherStates {}

class FailurGetweather extends WeatherStates {}

class SuccessGetweather extends WeatherStates {
  final WeatherModle weathermodle1;

  SuccessGetweather(this.weathermodle1);
}
