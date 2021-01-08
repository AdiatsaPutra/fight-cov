import 'package:corona_indonesia/bloc/world_corona_bloc.dart';
import 'package:corona_indonesia/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
            create: (context) => WorldCoronaBloc()..add(FetchDataCorona()),
            child: HomePage()));
  }
}
