import 'package:flutter/material.dart';
import 'package:weather/cuibts/getwearhercubit/get_weather_cubit.dart';
import 'package:weather/modles/weather_model.dart';
import 'package:weather/views/searchview.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weathermodle1});
  final WeatherModle weathermodle1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weathermodle1.cityName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            weathermodle1.date,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              const Spacer(flex: 3),
              Text(
                weathermodle1.temp.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const Spacer(flex: 2),
              Column(
                children: [
                  Text(
                    weathermodle1.maxtemp.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    weathermodle1.mintemp.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 3),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Center(
            child: Text(
              weathermodle1.condetioh,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
