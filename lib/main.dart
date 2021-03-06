import 'package:block_demo/bloc/internet_bloc_bloc.dart';
import 'package:block_demo/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBlocBloc(),
      child: MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
