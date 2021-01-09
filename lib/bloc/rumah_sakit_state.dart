part of 'rumah_sakit_bloc.dart';

abstract class RumahSakitState extends Equatable {
  const RumahSakitState();
}

class RumahSakitInitial extends RumahSakitState {
  @override
  List<Object> get props => [];
}

class FetchRumahSakitSuccess extends RumahSakitState {
  final List<DataRumahSakit> dataRumahSakit;

  FetchRumahSakitSuccess({this.dataRumahSakit});
  @override
  List<Object> get props => [dataRumahSakit];
}
