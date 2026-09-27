// import 'package:lms_layered_architecture_example/model/category.dart';
// import 'package:lms_layered_architecture_example/model/product.dart';
// import 'package:lms_layered_architecture_example/model/user.dart';

// class ProductService {
//   List<Product> products = [];
//   List<Category> categories = [];

//   Product addProduct({
//     // required User admin,
//     required String id,
//     required String name,
//     required double price,
//     required int stock,
//     required String category,
//   }) {
//     if (admin.role != Role.admin) {
//       throw Exception('Only admin can add product');
//     }
//     final findExistingCategory = categories.firstWhere(
//       (findCategory) => findCategory.name == category,
//       orElse: () => throw Exception('Category not found'),
//     );
//     final product = Product(
//       id: id,
//       name: name,
//       price: price,
//       stock: stock,
//       category: findExistingCategory,
//       // addedBy: admin,
//     );
//     products.add(product);
//     return product;
//   }

//   String displayProduct() {
//     return products.map(
//       (p) => p.toString(),
//     ).toString();
//   }

//   // void editProduct({
//   //   required User admin,
//   //   required String productId,
//   //   double? newPrice,
//   //   int? newStock,
//   //   // String? newCategory,
//   // }) {
//   //   if (admin.role != Role.admin) {
//   //     throw Exception('Only admin can Edit Product');
//   //   }
//   //   final product = products.firstWhere(
//   //     (findProduct) => findProduct.id == productId,
//   //     orElse: () => throw Exception('Product not found'),
//   //   );
//   // }

//   void removeProduct(String productId) {}
// }
