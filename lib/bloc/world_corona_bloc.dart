import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:corona_indonesia/services/service.dart';
import 'package:equatable/equatable.dart';

part 'world_corona_event.dart';
part 'world_corona_state.dart';

class WorldCoronaBloc extends Bloc<WorldCoronaEvent, WorldCoronaState> {
  WorldCoronaBloc() : super(WorldCoronaInitial());

  @override
  Stream<WorldCoronaState> mapEventToState(
    WorldCoronaEvent event,
  ) async* {
    if (event is FetchDataCorona) {
      DataCorona dataCorona = await CoronaService.getDataGlobal();
      yield CoronaFetchSuccess(dataCorona: dataCorona);
    }
  }
}
