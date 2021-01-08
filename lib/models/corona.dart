import 'package:flutter/material.dart';

class DataCoronaIndonesia {
  final int positif;
  final int dirawat;
  final int sembuh;
  final int meninggal;
  final DateTime lastUpdate;
  DataCoronaIndonesia({
    @required this.positif,
    @required this.dirawat,
    @required this.sembuh,
    @required this.meninggal,
    @required this.lastUpdate,
  });

  factory DataCoronaIndonesia.fromJson(Map<String, dynamic> json) =>
      DataCoronaIndonesia(
        positif: json["positif"],
        dirawat: json["dirawat"],
        sembuh: json["sembuh"],
        meninggal: json["meninggal"],
        lastUpdate: DateTime.parse(json["lastUpdate"]),
      );
}

class DataCorona {
  final String positif;
  final String sembuh;
  final String meninggal;

  DataCorona(
      {@required this.positif,
      @required this.sembuh,
      @required this.meninggal});
}

class DataRumahSakit {
  final String name;
  final String address;
  final String region;
  final String phone;
  final String province;

  DataRumahSakit(
      {@required this.name,
      @required this.address,
      @required this.region,
      @required this.phone,
      @required this.province});

  factory DataRumahSakit.fromJson(Map<String, dynamic> json) {
    return DataRumahSakit(
        name: json['name'],
        address: json['address'],
        region: json['region'],
        phone: json['phone'],
        province: json['province']);
  }
}
