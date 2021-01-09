import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:corona_indonesia/services/service.dart';
import 'package:equatable/equatable.dart';

part 'rumah_sakit_event.dart';
part 'rumah_sakit_state.dart';

class RumahSakitBloc extends Bloc<RumahSakitEvent, RumahSakitState> {
  RumahSakitBloc() : super(RumahSakitInitial());

  @override
  Stream<RumahSakitState> mapEventToState(
    RumahSakitEvent event,
  ) async* {
    if (event is FetchRumahSakit) {
      List<DataRumahSakit> rumahSakit = await CoronaService.getRumahSakit();
      yield FetchRumahSakitSuccess(dataRumahSakit: rumahSakit);
    }
  }
}
