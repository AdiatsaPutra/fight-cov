part of 'pages.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<IndonesiaCovidNewsBloc, IndonesiaCovidNewsState>(
        builder: (_, newsIndonesiaState) {
          if (newsIndonesiaState is IndonesiaNewsFetchSuccess) {
            List<IndonesiaNews> indonesiaNews =
                newsIndonesiaState.indonesiaNews;
            return ListView.builder(
                itemCount: indonesiaNews.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => NewsWebViewPage(
                            index: index,
                            selectedUrl: indonesiaNews[index].url,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(MdiIcons.newspaper),
                        title: Text(indonesiaNews[index].title),
                      ),
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
    );
  }
}
