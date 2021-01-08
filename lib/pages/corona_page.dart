import 'package:corona_indonesia/bloc/world_corona_bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:corona_indonesia/widgets/call_action_button.dart';
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
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFFFBFBFB),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Text(
                          'Apakah Kamu Mengalami Gejala - Gejala Berikut?',
                          style: GoogleFonts.poppins(
                              color: Color(0xFF212121),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 30,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
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
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              BlocBuilder<WorldCoronaBloc, WorldCoronaState>(
                                builder: (_, coronaFetchSuccess) {
                                  if (coronaFetchSuccess
                                      is CoronaFetchSuccess) {
                                    DataCorona dataCorona =
                                        coronaFetchSuccess.dataCorona;
                                    return Column(
                                      children: [
                                        Text(dataCorona.positif),
                                        Text(dataCorona.sembuh),
                                        Text(dataCorona.meninggal),
                                      ],
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      )
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
