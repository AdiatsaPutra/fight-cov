import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:corona_indonesia/services/service.dart';
import 'package:equatable/equatable.dart';

part 'indonesia_corona_event.dart';
part 'indonesia_corona_state.dart';

class IndonesiaCoronaBloc
    extends Bloc<IndonesiaCoronaEvent, IndonesiaCoronaState> {
  IndonesiaCoronaBloc() : super(IndonesiaCoronaInitial());

  @override
  Stream<IndonesiaCoronaState> mapEventToState(
    IndonesiaCoronaEvent event,
  ) async* {
    if (event is FetchCoronaIndonesia) {
      DataCoronaIndonesia dataCoronaIndonesia =
          await CoronaService.getDataIndonesia();
      yield FetchCoronaIndonesiaSuccess(
          dataCoronaIndonesia: dataCoronaIndonesia);
    }
  }
}
