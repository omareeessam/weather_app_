import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/cubit/weahter_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/services/weather_service.dart';

void main() {
  runApp(
    BlocProvider(

     create: (context) {
        return WeahterCubit(WeatherService());
      },
    child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      
     // primarySwatch: Provider.of<WeatherProvider>(context).weatherData == null ?  Colors.blue : Provider.of<WeatherProvider>(context).weatherData!.getThemeColor()  ,
      ),
      home: HomePage(),
    );
  }
}

