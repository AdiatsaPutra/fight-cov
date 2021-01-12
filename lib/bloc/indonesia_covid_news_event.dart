part of 'indonesia_covid_news_bloc.dart';

abstract class IndonesiaCovidNewsEvent extends Equatable {
  const IndonesiaCovidNewsEvent();
}

class FetchIndonesiaNews extends IndonesiaCovidNewsEvent {
  @override
  List<Object> get props => [];
}
