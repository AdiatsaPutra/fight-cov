part of 'world_corona_bloc.dart';

abstract class WorldCoronaState extends Equatable {
  const WorldCoronaState();
}

class WorldCoronaInitial extends WorldCoronaState {
  @override
  List<Object> get props => throw UnimplementedError();
}

class CoronaFetchSuccess extends WorldCoronaState {
  final DataCorona dataCorona;

  CoronaFetchSuccess({this.dataCorona});
  @override
  List<Object> get props => [dataCorona];
}
