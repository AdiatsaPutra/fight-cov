import 'package:corona_indonesia/bloc/rumah_sakit_bloc.dart';
import 'package:flutter/material.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                    color: Color(0xFFA694C4),
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  leading: Icon(
                    Icons.local_hospital,
                    color: Colors.white,
                  ),
                  title: Text(
                    dataRumahSakit[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(dataRumahSakit[index].address),
                  contentPadding: EdgeInsets.all(10),
                  trailing: (dataRumahSakit[index].phone == null)
                      ? Text(
                          'Tidak Ada Nomor Telepon',
                        )
                      : Container(
                          width: 100,
                          height: 130,
                          child: Text(dataRumahSakit[index].phone,
                              style: TextStyle(fontWeight: FontWeight.bold))),
                ),
              ),
            ),
          );
        } else {
          // Todo: SpinkitFadingCircle
          return Center(child: CircularProgressIndicator());
        }
      },
    ));
  }
}
