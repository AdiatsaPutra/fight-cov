import 'package:corona_indonesia/services/service.dart';
import 'package:flutter/material.dart';
import 'package:corona_indonesia/models/corona.dart';

class RumahSakit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: CoronaService.getRumahSakit(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<DataRumahSakit> listRumahSakit = snapshot.data;
            return RefreshIndicator(
              onRefresh: () => CoronaService.getRumahSakit(),
              child: ListView(
                children: listRumahSakit
                    .map((DataRumahSakit dataRumahSakit) => Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dataRumahSakit.name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(dataRumahSakit.region),
                                Text(dataRumahSakit.address),
                                Row(
                                  children: [
                                    Icon(Icons.phone),
                                    (dataRumahSakit.phone != null)
                                        ? Text(
                                            dataRumahSakit.phone.toString(),
                                            style: TextStyle(fontSize: 14),
                                          )
                                        : Text(
                                            "Tidak Ada Nomor Telepon",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error'));
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
