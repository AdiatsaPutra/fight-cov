import 'dart:convert';

import 'package:corona_indonesia/models/corona.dart';
import 'package:http/http.dart' as http;

class CoronaService {
  // Get Data Indonesia
  static Future<DataCoronaIndonesia> getDataIndonesia() async {
    String ulCoronaIndonesia =
        "https://apicovid19indonesia-v2.vercel.app/api/indonesia";
    var responseCoronaIndonesia = await http.get(ulCoronaIndonesia);
    var dataCoronaIndonesia = jsonDecode(responseCoronaIndonesia.body);
    return DataCoronaIndonesia.fromJson(dataCoronaIndonesia);
  }

  // Get Data Global
  static Future<DataCorona> getDataGlobal() async {
    String dataCoronaPositif = "https://api.kawalcorona.com/positif";
    String dataCoronaSembuh = "https://api.kawalcorona.com/sembuh";
    String dataCoronaMeninggal = "https://api.kawalcorona.com/meninggal";

    var responsePositif = await http.get(dataCoronaPositif);
    var responseSembuh = await http.get(dataCoronaSembuh);
    var responseMeninggal = await http.get(dataCoronaMeninggal);

    var bodyPositif = jsonDecode(responsePositif.body);
    var bodySembuh = jsonDecode(responseSembuh.body);
    var bodyMeninggal = jsonDecode(responseMeninggal.body);

    var dataCoronaGlobal = DataCorona(
        positif: bodyPositif['value'],
        sembuh: bodySembuh['value'],
        meninggal: bodyMeninggal['value']);

    return dataCoronaGlobal;
  }

  // Get Data Rumah Sakit
  static Future<List<DataRumahSakit>> getRumahSakit() async {
    String urlRumahSakit = "https://dekontaminasi.com/api/id/covid19/hospitals";
    var responseRumahSakit = await http.get(urlRumahSakit);
    List<dynamic> bodyRumahSakit = jsonDecode(responseRumahSakit.body);
    List<DataRumahSakit> dataRumahSakit = bodyRumahSakit
        .map((dynamic json) => DataRumahSakit.fromJson(json))
        .toList();
    return dataRumahSakit;
  }
}
