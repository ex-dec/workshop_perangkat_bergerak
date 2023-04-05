import 'package:flutter/material.dart';
import 'package:workshop_perangkat_bergerak/daftar_isi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project UTS',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: DaftarIsiPage(),
    );
  }
}
