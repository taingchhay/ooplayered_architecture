import 'package:lms_layered_architecture_example/model/order.dart';
import 'package:lms_layered_architecture_example/model/order_item.dart';
import 'package:lms_layered_architecture_example/model/user.dart';

class OrderService {
  final List<Order> orders = [];

  Order placeOrder({required User customer, required List<OrderItem> items}) {
    if (items.isEmpty) {
      throw Exception('Please add item');
    }
    for (final item in items) {
      if (item.quantity > item.product.stock) {
        throw Exception('${item.product.name} not enough in stock');
      }
    }
    final order = Order(id: '${orders.length + 1}', customer: customer);
    for (final item in items) {
      order.addItem(item);
      item.product.reduceStock(item.quantity);
    }
    orders.add(order);
    return order;
  }
}
