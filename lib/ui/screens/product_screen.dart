import 'package:flutter/material.dart';
import 'package:lms_layered_architecture_example/ui/screens/order_screen.dart';
import 'package:lms_layered_architecture_example/ui/widgets/app_button.dart';
import 'package:lms_layered_architecture_example/ui/widgets/product_card.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('Products'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ProductCard(),
                  SizedBox(height: 200),
                  Center(
                    child: AppButton(
                      backgroundColor: Colors.pinkAccent,
                      text: 'Order Now',
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context)=>OrderScreen(),
                          )
                        );
                      },
                      height: 45,
                      width: 140,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
