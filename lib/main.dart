import 'package:corona_indonesia/bloc/detail_corona_bloc.dart';
import 'package:corona_indonesia/bloc/indonesia_corona_bloc.dart';
import 'package:corona_indonesia/bloc/indonesia_covid_news_bloc.dart';
import 'package:corona_indonesia/bloc/rumah_sakit_bloc.dart';
import 'package:corona_indonesia/bloc/world_corona_bloc.dart';
import 'package:corona_indonesia/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage());
  }
}
