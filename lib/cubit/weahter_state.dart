part of 'weahter_cubit.dart';

@immutable
abstract class WeahterState {}

class WeahterInitial extends WeahterState {}
class WeahterLoadingState extends WeahterState {}
class WeahterSuccessState extends WeahterState {}
class WeahterErrorState extends WeahterState {}
