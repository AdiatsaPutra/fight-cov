part of 'indonesia_corona_bloc.dart';

abstract class IndonesiaCoronaState extends Equatable {
  const IndonesiaCoronaState();
}

class IndonesiaCoronaInitial extends IndonesiaCoronaState {
  @override
  List<Object> get props => [];
}

class FetchCoronaIndonesiaSuccess extends IndonesiaCoronaState {
  final DataCoronaIndonesia dataCoronaIndonesia;

  FetchCoronaIndonesiaSuccess({this.dataCoronaIndonesia});
  @override
  List<Object> get props => [dataCoronaIndonesia];
}
