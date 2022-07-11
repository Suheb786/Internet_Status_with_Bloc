part of 'internet_bloc_bloc.dart';

@immutable
abstract class InternetBlocState {}

class InternetBlocInitial extends InternetBlocState {}

class InternetGainState extends InternetBlocState {}

class InternetLostState extends InternetBlocState {}
