import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:corona_indonesia/services/service.dart';
import 'package:equatable/equatable.dart';

part 'detail_corona_event.dart';
part 'detail_corona_state.dart';

class DetailCoronaBloc extends Bloc<DetailCoronaEvent, DetailCoronaState> {
  DetailCoronaBloc() : super(DetailCoronaInitial());

  @override
  Stream<DetailCoronaState> mapEventToState(
    DetailCoronaEvent event,
  ) async* {
    if (event is FetchCoronaRegion) {
      List<Region> region = await CoronaService.getDataRegion();
      yield FetchDetailCoronaSuccess(region: region);
    }
  }
}
