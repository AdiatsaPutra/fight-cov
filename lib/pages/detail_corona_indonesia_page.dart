import 'package:corona_indonesia/bloc/detail_corona_bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailCoronaIndonesia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailCoronaBloc()..add(FetchCoronaRegion()),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: BlocBuilder<DetailCoronaBloc, DetailCoronaState>(
                builder: (_, detailCoronaState) {
                  if (detailCoronaState is FetchDetailCoronaSuccess) {
                    List<Region> regionData = detailCoronaState.region;
                    return Container(
                      child: ListView.builder(
                        itemCount: regionData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            width: 100,
                            child: Card(
                              child: Column(
                                children: [
                                  Text(
                                    regionData[index].name,
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    regionData[index]
                                        .numbers
                                        .infected
                                        .toString(),
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    regionData[index]
                                        .numbers
                                        .recovered
                                        .toString(),
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    regionData[index].numbers.fatal.toString(),
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
