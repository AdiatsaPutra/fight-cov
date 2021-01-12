part of 'indonesia_covid_news_bloc.dart';

abstract class IndonesiaCovidNewsState extends Equatable {
  const IndonesiaCovidNewsState();
}

class IndonesiaCovidNewsInitial extends IndonesiaCovidNewsState {
  @override
  List<Object> get props => [];
}

class IndonesiaNewsFetchSuccess extends IndonesiaCovidNewsState {
  final List<IndonesiaNews> indonesiaNews;

  IndonesiaNewsFetchSuccess({this.indonesiaNews});
  @override
  List<Object> get props => [indonesiaNews];
}
