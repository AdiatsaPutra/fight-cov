part of 'pages.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<IndonesiaCovidNewsBloc, IndonesiaCovidNewsState>(
          builder: (_, newsIndonesiaState) {
            if (newsIndonesiaState is IndonesiaNewsFetchSuccess) {
              List<IndonesiaNews> indonesiaNews =
                  newsIndonesiaState.indonesiaNews;
              return ListView.builder(
                itemCount: indonesiaNews.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(MdiIcons.newspaper),
                      title: Text(
                        indonesiaNews[index].title,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      trailing: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    NewsWebViewPage(
                                  index: index,
                                  selectedUrl: indonesiaNews[index].url,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'Baca',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color(0xFFF73C4F),
                            ),
                          )),
                    ),
                  );
                },
              );
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
    );
  }
}
