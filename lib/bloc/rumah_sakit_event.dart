part of 'rumah_sakit_bloc.dart';

abstract class RumahSakitEvent extends Equatable {
  const RumahSakitEvent();
}

class FetchRumahSakit extends RumahSakitEvent {
  @override
  List<Object> get props => [];
}
