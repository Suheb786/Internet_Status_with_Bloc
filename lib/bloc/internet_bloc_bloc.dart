import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:meta/meta.dart';

part 'internet_bloc_event.dart';
part 'internet_bloc_state.dart';

class InternetBlocBloc extends Bloc<InternetBlocEvent, InternetBlocState> {
  InternetBlocBloc() : super(InternetBlocInitial()) {
    on<OnInternetLost>((event, emit) => emit(InternetLostState()));
    on<OnInternetGain>(((event, emit) => emit(InternetGainState())));

    Connectivity().onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(OnInternetGain());
      } else {
        add(OnInternetLost());
      }
    });
  }
}
