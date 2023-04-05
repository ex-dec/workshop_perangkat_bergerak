import 'item.dart';

class Cart {
  final List<Item> _items = [];

  List<Item> get items => _items;

  void addItem(Item item) {
    _items.add(item);
  }

  void removeItem(Item item) {
    _items.remove(item);
  }

  double get total => _items.fold(0.0, (acc, item) => acc + item.price);
}