import 'package:corona_indonesia/bloc/indonesia_corona_bloc.dart';
import 'package:corona_indonesia/bloc/world_corona_bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:corona_indonesia/widgets/call_action_button.dart';
import 'package:corona_indonesia/widgets/corona_card.dart';
import 'package:corona_indonesia/widgets/corona_card_indonesia.dart';
import 'package:corona_indonesia/widgets/text_keterangan_gejala.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CoronaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 210,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFA694C4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Container(
                  height: 900,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFFEDEDED),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 30,
                          height: 230,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Text(
                                  'Apakah Kamu Mengalami Gejala - Gejala Berikut?',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF212121),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Image.asset(
                                  'assets/gejala.png',
                                  width: 330,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  KeteranganGejala(
                                    keterangan: 'Sesak Napas',
                                  ),
                                  KeteranganGejala(
                                    keterangan: 'Batuk',
                                  ),
                                  KeteranganGejala(
                                    keterangan: 'Demam',
                                  ),
                                  KeteranganGejala(
                                    keterangan: 'Sakit Kepala',
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CallAction(
                                      text: 'Telpon 119',
                                      color: Color(0xFFF73C4F),
                                      onTap: () {
                                        print('object');
                                      },
                                    ),
                                    CallAction(
                                      text: 'Kirim SMS',
                                      color: Color(0xFF376F92),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 30,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BlocBuilder<IndonesiaCoronaBloc,
                                  IndonesiaCoronaState>(
                                builder: (_, indoCoronaFetchSuccess) {
                                  if (indoCoronaFetchSuccess
                                      is FetchCoronaIndonesiaSuccess) {
                                    DataCoronaIndonesia dataCoronaIndonesia =
                                        indoCoronaFetchSuccess
                                            .dataCoronaIndonesia;
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Indonesia Data',
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 5,
                                            ),
                                            CoronaCardIndoesia(
                                              text: 'Positif',
                                              data: dataCoronaIndonesia.positif
                                                  .toString(),
                                              color: Color(0xFFF9D8AD),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CoronaCardIndoesia(
                                              text: 'Sembuh',
                                              data: dataCoronaIndonesia.sembuh
                                                  .toString(),
                                              color: Color(0xFF89C4C0),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 5,
                                            ),
                                            CoronaCardIndoesia(
                                              text: 'Meninggal',
                                              data: dataCoronaIndonesia
                                                  .meninggal
                                                  .toString(),
                                              color: Color(0xFFF73C4F),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CoronaCardIndoesia(
                                              text: 'Dirawat',
                                              data: dataCoronaIndonesia.dirawat
                                                  .toString(),
                                              color: Color(0xFF376F92),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  } else {
                                    // TODO: SPINKIT FADING CIRCLE
                                    return Container();
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 30,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BlocBuilder<WorldCoronaBloc, WorldCoronaState>(
                                builder: (_, coronaFetchSuccess) {
                                  if (coronaFetchSuccess
                                      is CoronaFetchSuccess) {
                                    DataCorona dataCorona =
                                        coronaFetchSuccess.dataCorona;
                                    return Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'World Data',
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        CoronaCard(
                                          text: 'Positif',
                                          data: dataCorona.positif,
                                          color: Color(0xFFF9D8AD),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        CoronaCard(
                                          text: 'Sembuh',
                                          data: dataCorona.sembuh,
                                          color: Color(0xFF89C4C0),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        CoronaCard(
                                          text: 'Meninggal',
                                          data: dataCorona.meninggal,
                                          color: Color(0xFFF73C4F),
                                        ),
                                      ],
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0, left: 15),
                child: Text(
                  'Fight Cov',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: Image.asset(
                  'assets/char1.png',
                  width: 230,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
