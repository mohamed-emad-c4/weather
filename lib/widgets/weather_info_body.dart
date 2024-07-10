import 'package:flutter/material.dart';
import 'package:weather/views/searchview.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Alexandria',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            'updated at 23:46',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Spacer(flex: 3),
              Text(
                '17',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Spacer(flex: 2),
              Column(
                children: [
                  Text(
                    'Maxtemp: 24',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Mintemp: 16',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Spacer(flex: 3),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Ligh Rain',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
