import 'package:flutter/material.dart';
import 'package:lms_layered_architecture_example/ui/screens/order_screen.dart';
import 'package:lms_layered_architecture_example/ui/screens/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online flower shop',
      home: ProductScreen(),
      // home: OrderScreen(),
    );
  }
}
