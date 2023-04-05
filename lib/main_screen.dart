import 'package:flutter/material.dart';
import 'package:workshop_perangkat_bergerak/done_tourism_list.dart';
import 'package:workshop_perangkat_bergerak/model/tourism_place.dart';
import 'package:workshop_perangkat_bergerak/tourism_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<TourismPlace> doneTourismPlaceList = [];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Jawa Timur"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return DoneTourismList(doneTourismPlaceList: doneTourismPlaceList);
                }
                )
              );
            },
            icon: const Icon(Icons.done_rounded)
          )
        ],
      ),
      body: TourismList(doneTourismPlaceList: doneTourismPlaceList,),
    );
  }
}