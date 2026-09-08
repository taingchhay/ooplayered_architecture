import 'package:lms_layered_architecture_example/model/category.dart';
import 'package:lms_layered_architecture_example/model/product.dart';

class ProductService {
  List<Product> products = [];
  List<Category> categories = [];

  void addProduct({
    required String id,
    required String name,
    required double price,
    required int stock,
    required String categoryId,
  }) {
  }

  void editProduct({
    required String productId,
    double? newPrice,
    int? newStock,
  }) {

  }

  void removeProduct(String productId) {

  }

}
