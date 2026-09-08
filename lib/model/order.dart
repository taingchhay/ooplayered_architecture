import 'order_item.dart';
import 'user.dart';

class Order {
  final String id;
  final User customer;
  final List<OrderItem> items = [];

  Order({required this.id, required this.customer});

  double totalPrice() {
    double total = 0;
    for (final item in items) {
      total += item.subtotal();
    }
    return total;
  }

  void addItem(OrderItem item) {
    items.add(item);
  }

}
