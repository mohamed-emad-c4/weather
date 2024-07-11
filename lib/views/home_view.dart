import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cuibts/getwearhercubit/get_weather_cubit.dart';
import 'package:weather/cuibts/getwearhercubit/getweatherstates.dart';
import 'package:weather/views/searchview.dart';
import 'package:weather/widgets/weather_info_body.dart';

import '../widgets/no_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SearchViwe();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            
        if (state is SuccessGetweather) {
          return  WeatherInfoBody(
            weathermodle1:state.weathermodle1 ,
          );
          
        } else {
          return const NoWeatherBody();
        }
      }),
    );
  }
}
