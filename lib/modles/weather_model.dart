class WeatherModle {
  final String cityName;
  final double temp;
  final double mintemp;
  final double maxtemp;
  final String condetioh;
  final String? image;
  final String date;

  WeatherModle(
      {required this.cityName,
      required this.temp,
      required this.mintemp,
      required this.maxtemp,
      required this.condetioh,
       this.image,
      required this.date});
      //named constractor
  factory WeatherModle.fromJson(Map<String, dynamic> json) {
    return WeatherModle(
        cityName: json['location']['name'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'] ,
        condetioh: json['forecast']['forecastday'][0]['day']['condition']['text'],
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        date: json['current']['last_updated']);
  } 
 
}
