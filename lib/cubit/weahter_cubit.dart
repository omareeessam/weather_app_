import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

part 'weahter_state.dart';

class WeahterCubit extends Cubit<WeahterState> {
  WeahterCubit(this.weatherService) : super(WeahterInitial());
  
 String? cityName;
    WeatherService weatherService;
 WeatherModel? weatherModel;
  getWeather({required String cityName})async{
  emit(WeahterLoadingState());

  try {
weatherModel=  await weatherService.getWeather(cityName: cityName!);
  emit(WeahterSuccessState());
} on Exception catch (e) {
emit(WeahterErrorState());
}

  }
}
