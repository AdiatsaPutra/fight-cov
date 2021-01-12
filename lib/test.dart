import 'dart:async';

import 'package:corona_indonesia/bloc/indonesia_covid_news_bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => IndonesiaCovidNewsBloc()..add(FetchIndonesiaNews()),
        child: Scaffold(
          body: BlocBuilder<IndonesiaCovidNewsBloc, IndonesiaCovidNewsState>(
            builder: (_, newsIndonesiaState) {
              if (newsIndonesiaState is IndonesiaNewsFetchSuccess) {
                List<IndonesiaNews> indonesiaNews =
                    newsIndonesiaState.indonesiaNews;
                return ListView.builder(
                    itemCount: indonesiaNews.length,
                    itemBuilder: (context, index) {
                      print(indonesiaNews[index].title);
                      return ListTile(
                        title: Column(
                          children: [
                            Text(indonesiaNews[index].title),
                            Text(indonesiaNews[index].url),
                          ],
                        ),
                      );
                    });
              } else {
                return Center(
                  child: SpinKitFadingCircle(
                    color: Color(0xFFF73C4F),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class HalamanUtama extends StatelessWidget {
  final String selectedUrl;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  HalamanUtama({
    @required this.selectedUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.selectedUrl),
      ),
      body: WebView(
        initialUrl: selectedUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
