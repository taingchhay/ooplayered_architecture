

import 'package:lms_layered_architecture_example/model/category.dart';
import 'package:lms_layered_architecture_example/model/order_item.dart';
import 'package:lms_layered_architecture_example/model/product.dart';
import 'package:lms_layered_architecture_example/model/user.dart';
import 'package:lms_layered_architecture_example/service/order_service.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  late OrderService orderService;
  late User customer;
  late Product lilies;
  late User admin;

  setUp(() {
    orderService = OrderService();
    admin = User.admin(
      id: 'B1',
      name: 'Nemo', 
      phoneNum: '012435446', 
      );
    customer = User.customer(
      id: 'A1', 
      name: 'Nano',
      phoneNum: '0967780361');
      
      lilies = Product(
      id: 'T1',
      name: 'lilies',
      price: 10,
      stock: 3,
      category: Category(name: 'Flower'),
      addedBy: admin,
    );
  });

    test('placeOrder throws when there are no items', () {
    expect(
      () => orderService.placeOrder(customer: customer, items: []),
      throwsException,
    );
  });

    test('placeOrder throws when not enough in stock',(){
      expect(
        () => orderService.placeOrder(
          customer: customer, 
          items: [OrderItem(product: lilies, quantity: 2)]
          ),
          throwsException,
      );
    });

    test('placeOrder reduces stock and totals the price', () {
        final order = orderService.placeOrder(
          customer: customer,
          items: [OrderItem(product: lilies, quantity: 2)],
        );

        expect(order.items.length, 1);
        expect(lilies.stock, 1);
        expect(order.totalPrice(), 20.0);
      });
}
