import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cuibts/getwearhercubit/get_weather_cubit.dart';
import 'package:weather/views/home_view.dart';

import 'views/home_view.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>GetWeatherCubit(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeView(),
        ),
    );
  }
}
