import 'package:flutter/material.dart';
import 'package:lms_layered_architecture_example/ui/widgets/app_button.dart';
import 'package:lms_layered_architecture_example/ui/widgets/order_item_card.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Your Order Product'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(child: ListView(
              children: [
                OrderItemCard(),
              ]
            )),
            // OrderItemCard(),
            // SizedBox(height:1),
            // Expanded(
              Center(
                child: AppButton(
                  text: 'Place Order',
                  onPressed: () {},
                  height: 45,
                  width: 140,
                  backgroundColor: Colors.pinkAccent,
                ),
              ),
            // ),
          ],
        ),
      ),
    );
  }
}
