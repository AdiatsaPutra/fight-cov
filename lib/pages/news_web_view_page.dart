part of 'pages.dart';

class NewsWebViewPage extends StatelessWidget {
  final String selectedUrl;
  final int index;

  final Completer<WebViewController> controller =
      Completer<WebViewController>();

  NewsWebViewPage({this.selectedUrl, this.index});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          
          initialUrl: selectedUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}
