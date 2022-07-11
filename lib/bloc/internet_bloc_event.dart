part of 'internet_bloc_bloc.dart';

@immutable
abstract class InternetBlocEvent {}

class OnInternetLost extends InternetBlocEvent {}

class OnInternetGain extends InternetBlocEvent {}
