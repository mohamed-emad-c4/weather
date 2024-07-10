import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cuibts/getwearhercubit/getweatherstates.dart';
import 'package:weather/modles/weather_model.dart';

import '../../service/service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(NOGetWeatherstate as WeatherStates);
  GetWheatherCubitFunction(value) async {
    try {
      WeatherModle? weatherModle1 =
          await WeatherService(Dio()).getWeather(value);
      emit(SuccessGetweather());
    } catch (e) {
      emit(FailurGetweather());
    }
  }
}
