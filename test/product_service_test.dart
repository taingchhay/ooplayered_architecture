// import 'package:lms_layered_architecture_example/model/category.dart';
// import 'package:lms_layered_architecture_example/model/user.dart';
// import 'package:lms_layered_architecture_example/service/product_service.dart';
// import 'package:test/expect.dart';
// import 'package:test/scaffolding.dart';

// void main() {
//   late ProductService productService;
//   late User admin;
//   late User customer;

//   setUp(() {
//     productService = ProductService();
//     admin = User.admin(
//       id: 'B1',
//       name: 'Nemo',
//       phoneNum: '012435446',
//     );
//     customer = User.customer(id: 'N1', name: 'Nana', phoneNum: '012435446');
//     productService.categories.add(Category(name: 'flower'));
//     productService.categories.add(Category(name: 'skincare'));
//   });

//   test('Add product', () {
//     final product = productService.addProduct(
//       admin: admin,
//       id: 'A1',
//       name: 'Tulips',
//       price: 5,
//       stock: 3,
//       category: 'flower',
//     );
//     expect(product.id, 'A1');
//     expect(product.name, 'Tulips');
//     expect(product.price, 5);
//     expect(product.stock, 3);
//     expect(product.category.name, 'flower');
//     expect(productService.products.length, 1);
//   });

//   test('only admin can add product', () {
//     expect(
//       () => productService.addProduct(
//           admin: customer,
//           id: 'B1',
//           name: 'rose',
//           price: 10,
//           stock: 2,
//           category: 'Flower'),
//       throwsException,
//     );
//   });

//   // test('Display all products', () {
//   //   final display = productService.displayProduct();
//   //   print(display);
//   //   expect(display.length, 2);
//   // });
// }
