import 'product.dart';

class OrderItem {
  final Product product;
  final int quantity;

  OrderItem({required this.product, required this.quantity});

  double subtotal() => product.price * quantity;
}
