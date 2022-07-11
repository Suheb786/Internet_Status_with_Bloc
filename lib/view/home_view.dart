import 'package:block_demo/bloc/internet_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<InternetBlocBloc, InternetBlocState>(
        builder: (context, state) {
          if (state is InternetGainState) {
            return Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Text(
                    "You are connected with Internet",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ));
          } else if (state is InternetLostState) {
            return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "No Internet",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ));
          } else {
            return Container(
              color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Text("Checking Internet State.."),
              ),
            );
          }
        },
      )),
    );
  }
}
