import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cuibts/getwearhercubit/get_weather_cubit.dart';
import 'package:weather/service/service.dart';


class SearchViwe extends StatelessWidget {
  const SearchViwe({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search ....'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
            var getwheather =BlocProvider.of<GetWeatherCubit>(context);
            getwheather.GetWheatherCubitFunction(value);
            Navigator.of(context).pop();
            },
            decoration: InputDecoration(
              label: const Text("search"),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              suffixIcon: const Icon(Icons.search),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
      ),
    );
  }
}


