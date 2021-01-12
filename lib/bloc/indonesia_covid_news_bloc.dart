import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:corona_indonesia/services/service.dart';
import 'package:equatable/equatable.dart';

part 'indonesia_covid_news_event.dart';
part 'indonesia_covid_news_state.dart';

class IndonesiaCovidNewsBloc
    extends Bloc<IndonesiaCovidNewsEvent, IndonesiaCovidNewsState> {
  IndonesiaCovidNewsBloc() : super(IndonesiaCovidNewsInitial());

  @override
  Stream<IndonesiaCovidNewsState> mapEventToState(
    IndonesiaCovidNewsEvent event,
  ) async* {
    if (event is FetchIndonesiaNews) {
      List<IndonesiaNews> indonesiaNews =
          await CoronaService.getNewsIndonesia();
      yield IndonesiaNewsFetchSuccess(indonesiaNews: indonesiaNews);
    }
  }
}
