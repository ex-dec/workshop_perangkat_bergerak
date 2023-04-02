import 'package:flutter/material.dart';
import 'package:workshop_perangkat_bergerak/list_item.dart';

import 'detail_screen.dart';
import 'model/tourism_place.dart';

class TourismList extends StatefulWidget {
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({
    Key? key,
    required this.doneTourismPlaceList
  }): super(key: key);

  @override
  _TourismListState createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      desc: 'Museum inside a decommisssioned Russion war submarine with tours & '
          'an adjacent park with cafes. Clean and well maintained. Car park '
          'cost 10k, entrace fee 15k/person. You can see KRI Pasopati there, '
          'it is a russian whiskey class. You can also watch the video about '
          'the Indonesian Navy at building beside the submarine',
      day: 'Every day',
      time: '08.00 - 16.00',
      price: '10.000',
      gallery: ['monkasel_1.jpg', 'monkasel_2.jpg', 'monkasel_3.jpg'],
    ),
    TourismPlace(
        name: 'Kelenteng Sanggar Agung',
        location: 'Kenjeran',
        imageAsset: 'assets/images/klenteng.jpg',
        desc: 'Kelenteng Sanggar Agung Kenjeran was built in the 18th century by '
            'the Chinese community who lived in the Kenjeran area. The temple '
            'building has traditional Chinese architecture with a three-layered '
            'roof style decorated with ornaments such as dragon and cloud statues.',
        day: 'Every day',
        time: '07.00 - 20.00',
        price: '5.000',
        gallery: ['klenteng_1.jpg', 'klenteng_2.jpg', 'klenteng_3.jpg']
    ),
    TourismPlace(
        name: 'House of Sampoerna',
        location: 'Krembangan Utara',
        imageAsset: 'assets/images/sampoerna.jpg',
        desc: 'House of Sampoerna is a cultural and historical tourist attraction '
            'located in Surabaya, East Java, Indonesia. It is situated in the '
            'old tobacco factory complex of Sampoerna, a renowned Indonesian '
            'cigarette brand. The House of Sampoerna is a museum and a cigarette'
            'factory that offers visitors an insight into the history and '
            'production of cigarettes in Indonesia.',
        day: 'Every day',
        time: '09.00 - 18.00',
        price: '0',
        gallery: ['sampoerna_1.jpg', 'sampoerna_2.jpg', 'sampoerna_3.jpg']
    ),
    TourismPlace(
        name: 'Tugu Pahlawan',
        location: 'Alun-alun contong',
        imageAsset: 'assets/images/pahlawan.jpg',
        desc: 'Tugu Pahlawan Surabaya, also known as the Heroes Monument, is a '
            'landmark and a historical monument located in Surabaya, East Java, '
            'Indonesia. It is dedicated to the brave soldiers who fought and '
            'died during the Battle of Surabaya in 1945, which was a significant'
            ' event in Indonesia\'s struggle for independence from Dutch colonial rule.',
        day: 'Selasa - Minggu',
        time: '08.00 - 15.00',
        price: '5.000',
        gallery: ['pahlawan_1.jpg', 'pahlawan_2.jpg', 'pahlawan_3.jpg']
    ),
    TourismPlace(
        name: 'Patung Suro Boyo',
        location: 'Wonokromo',
        imageAsset: 'assets/images/sby.jpg',
        desc: 'Suro Boyo Statue is a cultural and historical landmark located in '
            'Surabaya, East Java, Indonesia. The statue depicts a legendary '
            'creature from Javanese folklore called Suro, a mythical beast that '
            'is said to inhabit the forests and mountains of Java. Suro is often'
            ' associated with courage, strength, and power, and is considered a '
            'symbol of protection and prosperity in Javanese culture.',
        day: 'Every Day',
        time: '24 Hours',
        price: '0',
        gallery: ['sby_1.jpg', 'sby_2.jpg', 'sby_3.jpg']
    ),
    TourismPlace(
        name: 'Sendi Adventure',
        location: 'Cangar, Pacet, Mojokerto',
        imageAsset: 'assets/images/sendi.jpg',
        desc: 'Sendi Adventure is an exciting outdoor recreational activity center'
            ' located in Mojokerto, East Java, Indonesia. The center offers a '
            'variety of activities and adventures that cater to people of all '
            'ages and skill levels. The activities are designed to provide a '
            'thrilling and unforgettable experience for visitors, while also '
            'promoting the beauty of the natural environment in Mojokerto.',
        day: 'Every Day',
        time: '07.00 - 17.00',
        price: '10.000',
        gallery: ['sendi_1.jpg', 'sendi_2.jpg', 'sendi_3.jpg']
    ),
    TourismPlace(
        name: 'Bukit Kayoe Putih',
        location: 'Watu Blorok',
        imageAsset: 'assets/images/kayoeputih.jpg',
        desc: 'Bukit Kayu Putih is a beautiful hill located in Mojokerto, East '
            'Java, Indonesia. The hill is covered with lush green forests and '
            'offers a breathtaking panoramic view of the surrounding area. The'
            ' name "Kayu Putih" means "white wood" in Indonesian, referring to'
            ' the white bark of the trees that grow on the hill.',
        day: 'Every Day',
        time: '09.00 - 21.00',
        price: '10.000',
        gallery: ['kayoeputih_1.jpg', 'kayoeputih_2.jpg', 'kayoeputih_3.jpg']
    ),
    TourismPlace(
        name: 'Wisata Desa BMJ Mojopahit',
        location: 'Dlanggu, Mojokerto',
        imageAsset: 'assets/images/wd.jpg',
        desc: 'Bumi Mulyo Jati(BMJ) is one of tourism destination in Mojokerto. '
            'It has cocoa production house and Majapahit Culture',
        day: 'Every Day',
        time: '08.00 - 16.30',
        price: '15.000',
        gallery: ['wd_1.jpg', 'wd_2.jpg', 'wd_3.jpg']
    ),
    TourismPlace(
        name: 'Air Panas Pacet',
        location: 'Pacet, Mojokerto',
        imageAsset: 'assets/images/airpanas.jpg',
        desc: 'The Pacet Hot Springs are located in a lush valley surrounded by '
            'tropical forests and hills, providing visitors with breathtaking '
            'views of the natural landscape. The hot springs are rich in '
            'minerals, including sulfur and calcium, and are believed to have '
            'therapeutic properties that can help treat various health conditions.',
        day: 'Every Day',
        time: '00.00 - 23.59',
        price: '15.000',
        gallery: ['airpanas_1.jpg', 'airpanas_2.jpg', 'airpanas_3.jpg']
    ),
    TourismPlace(
        name: 'Patung Buddha Tidur',
        location: 'Kawasan budaya trowulan, Mojokerto',
        imageAsset: 'assets/images/buddha.jpg',
        desc: 'The Sleeping Buddha Statue is a popular tourist attraction located '
            'in Mojokerto, East Java, Indonesia. The statue is a representation '
            'of Buddha in a reclining position, which is a common pose in '
            'Buddhist art.',
        day: 'Every Day',
        time: '06.00 - 17.00',
        price: '5.000',
        gallery: ['buddha_1.jpg', 'buddha_2.jpg', 'buddha_3.jpg']
    ),
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      final TourismPlace place = tourismPlaceList[index];
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailScreen(place: place);
          }));
        },
        child: ListItem(
          place: place,
          isDone: doneTourismPlaceList.contains(place),
          onCheckboxClick: (bool? value){
            setState(() {
              if(value!=null) {
                value
                    ? doneTourismPlaceList.add(place)
                    : doneTourismPlaceList.remove(place);
              }
            });
          },
        ),
      );
    },
    itemCount: tourismPlaceList.length,
    );
  }
}