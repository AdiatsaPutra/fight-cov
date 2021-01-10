import 'package:corona_indonesia/bloc/detail_corona_bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCoronaIndonesia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailCoronaBloc()..add(FetchCoronaRegion()),
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Text('data'),
                    BlocBuilder<DetailCoronaBloc, DetailCoronaState>(
                      builder: (_, detailCoronaState) {
                        if (detailCoronaState is FetchDetailCoronaSuccess) {
                          List<Region> regionData = detailCoronaState.region;
                          return ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: regionData.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Card(
                                margin: EdgeInsets.all(5),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 90,
                                            child: Text(
                                              regionData[index].name,
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Positif',
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            regionData[index]
                                                .numbers
                                                .infected
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                color: Color(0xFFF9D8AD),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Sembuh',
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            regionData[index]
                                                .numbers
                                                .recovered
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                color: Color(0xFF89C4C0),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Meninggal',
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            regionData[index]
                                                .numbers
                                                .fatal
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                color: Color(0xFFF73C4F),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
