class TourismPlace {
  String name;
  String location;
  String imageAsset;
  
  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
  });
}

var tourismPlaceList = [
  TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg'
  ),
  TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng.jpg'
  ),
  TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/sampoerna.jpg'
  ),
  TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/pahlawan.jpg'
  ),
  TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/sby.jpg'
  ),
  TourismPlace(
      name: 'Sendi Adventure',
      location: 'Cangar, Pacet, Mojokerto',
      imageAsset: 'assets/images/sendi.jpg'
  ),
  TourismPlace(
      name: 'Bukit Kayoe Putih',
      location: 'Watu Blorok',
      imageAsset: 'assets/images/kayoeputih.jpg'
  ),
  TourismPlace(
      name: 'Wisata Desa Dlanggu',
      location: 'Dlanggu, Mojokerto',
      imageAsset: 'assets/images/wd.jpg'
  ),
  TourismPlace(
      name: 'Air Panas Pacet',
      location: 'Pacet, Mojokerto',
      imageAsset: 'assets/images/airpanas.jpg'
  ),
  TourismPlace(
      name: 'Patung Buddha Tidur',
      location: 'Kawasan budaya trowulan, Mojokerto',
      imageAsset: 'assets/images/buddha.jpg'
  ),
];