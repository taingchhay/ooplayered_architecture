import 'category.dart';
import 'user.dart';

class Product {
  final String id;
  final String name;
  final Category category;
  final User addedBy;

  double _price;
  int _stock;

  Product({
    required this.id,
    required this.name,
    required double price,
    required int stock,
    required this.category,
    required this.addedBy,
  })  : _price = price,
        _stock = stock;

  double get price => _price;
  int get stock => _stock;

  bool get isAvailable => _stock > 0;

  void reduceStock(int quantity) {
    if (quantity > _stock) {
      throw Exception('Not enough stock for $name');
    }
    _stock -= quantity;
  }
}
