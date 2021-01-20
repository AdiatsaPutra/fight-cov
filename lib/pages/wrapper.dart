part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (_) => IndonesiaCoronaBloc()..add(FetchCoronaIndonesia()),
      ),
      BlocProvider(
        create: (_) => WorldCoronaBloc()..add(FetchDataCorona()),
      ),
      BlocProvider(
        create: (_) => RumahSakitBloc()..add(FetchRumahSakit()),
      ),
      BlocProvider(
        create: (_) => DetailCoronaBloc()..add(FetchCoronaRegion()),
      ),
      BlocProvider(
        create: (_) => IndonesiaCovidNewsBloc()..add(FetchIndonesiaNews()),
      )
    ], child: HomePage());
  }
}
