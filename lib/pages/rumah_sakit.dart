import 'package:corona_indonesia/bloc/rumah_sakit_bloc.dart';
import 'package:flutter/material.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RumahSakit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<RumahSakitBloc, RumahSakitState>(
      builder: (_, rumahSakitState) {
        if (rumahSakitState is FetchRumahSakitSuccess) {
          List<DataRumahSakit> dataRumahSakit = rumahSakitState.dataRumahSakit;
          return ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF73C4F),
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  leading: Icon(
                    MdiIcons.hospitalBuilding,
                    color: Colors.white,
                  ),
                  title: Text(
                    dataRumahSakit[index].name,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    dataRumahSakit[index].address,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(15),
                  trailing: (dataRumahSakit[index].phone == null)
                      ? Container(
                          width: 100,
                          height: 130,
                          child: Text(
                            'Tidak Ada Nomor',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : Container(
                          width: 100,
                          height: 130,
                          child: Text(
                            dataRumahSakit[index].phone,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                ),
              ),
            ),
          );
        } else {
          return Center(
            child: SpinKitFadingCircle(
              color: Color(0xFFF73C4F),
            ),
          );
        }
      },
    ));
  }
}
