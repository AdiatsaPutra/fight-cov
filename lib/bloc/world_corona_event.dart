part of 'world_corona_bloc.dart';

abstract class WorldCoronaEvent extends Equatable {
  const WorldCoronaEvent();
}

class FetchDataCorona extends WorldCoronaEvent {
  @override
  List<Object> get props => [];
}
