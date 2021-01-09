part of 'detail_corona_bloc.dart';

abstract class DetailCoronaState extends Equatable {
  const DetailCoronaState();
}

class DetailCoronaInitial extends DetailCoronaState {
  @override
  List<Object> get props => [];
}

class FetchDetailCoronaSuccess extends DetailCoronaState {
  final List<Region> region;

  FetchDetailCoronaSuccess({this.region});
  @override
  List<Object> get props => [region];
}
