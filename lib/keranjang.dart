import 'package:flutter/material.dart';
import 'package:workshop_perangkat_bergerak/models/item.dart';

class KeranjangPage extends StatefulWidget {
  static List<Item> cartItems = [];

  const KeranjangPage({super.key});

  static addToCart(Item item) {
    cartItems.add(item);
  }

  static removeFromCart(Item item) {
    cartItems.remove(item);
  }

  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  int _totalHarga = 0;

  @override
  void initState() {
    super.initState();
    _calculateTotalHarga();
  }

  void _calculateTotalHarga() {
    int total = 0;
    for (var i = 0; i < KeranjangPage.cartItems.length; i++) {
      total += KeranjangPage.cartItems[i].price;
    }
    setState(() {
      _totalHarga = total;
    });
  }

  void _checkout() {
    setState(() {
      KeranjangPage.cartItems.clear();
      _calculateTotalHarga();
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Checkout berhasil.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang Belanja'),
      ),
      body: KeranjangPage.cartItems.isEmpty
          ? const Center(
        child: Text('Keranjang belanja kosong.'),
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: KeranjangPage.cartItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    KeranjangPage.cartItems[index].image,
                    width: 64,
                  ),
                  title: Text(KeranjangPage.cartItems[index].name),
                  subtitle: Text('Rp. ${KeranjangPage.cartItems[index].price.toString()}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        KeranjangPage.cartItems.removeAt(index);
                        _calculateTotalHarga();
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total Harga:'),
                Text('Rp. ${_totalHarga.toString()}'),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: KeranjangPage.cartItems.isEmpty ? null : _checkout,
              child: const Text('Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}
