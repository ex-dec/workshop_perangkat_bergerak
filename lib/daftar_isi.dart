import 'package:flutter/material.dart';
import 'package:workshop_perangkat_bergerak/models/item.dart';
import 'package:workshop_perangkat_bergerak/keranjang.dart';
import 'package:workshop_perangkat_bergerak/detail.dart';
import 'package:workshop_perangkat_bergerak/seeder/item_seeder.dart';

class DaftarIsiPage extends StatefulWidget {
  const DaftarIsiPage({super.key});

  @override
  _DaftarIsiPageState createState() => _DaftarIsiPageState();
}

class _DaftarIsiPageState extends State<DaftarIsiPage> {
  final List<Item> _items = ItemSeeder.seedItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Card(
            child: ListTile(
              leading: Image.asset(
                item.image,
                width: 64.0,
                height: 64.0,
                fit: BoxFit.contain,
              ),
              title: Text(item.name),
              subtitle: Text('Rp. ${item.price.toString()}'),
              trailing: IconButton(
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () {
                  KeranjangPage.addToCart(_items[index]);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${item.name} ditambahkan ke keranjang.'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage(item: item)),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const KeranjangPage()),
          );
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
