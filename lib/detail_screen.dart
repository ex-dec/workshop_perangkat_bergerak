import 'package:flutter/material.dart';
import 'package:workshop_perangkat_bergerak/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}): super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(
                place.imageAsset,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'Lobster'
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget> [
                  Column(
                    children: <Widget> [
                      const Icon(Icons.calendar_today),
                      Text(place.day),
                    ],
                  ),
                  Column(
                    children: <Widget> [
                      const Icon(Icons.access_time_rounded),
                      Text(place.time),
                    ],
                  ),
                  Column(
                    children: <Widget> [
                      const Icon(Icons.attach_money),
                      Text('Rp ${place.price} ,-'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
              child: Text(
                place.desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Oxygen'
                ),
              ),
            ),
            SizedBox(
              height: 125,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/${place.gallery[0]}'),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/${place.gallery[1]}'),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/${place.gallery[2]}'),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}