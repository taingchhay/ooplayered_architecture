import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images.jpeg',
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pink tulips',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF111318),
                      ),
                    ),
                    SizedBox(height: 9),
                    Text(
                      '\$5',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('12 in Stock', style: TextStyle(fontSize: 12)),
                    SizedBox(height: 5),
                    Text('Tulip', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
          // Positioned(
          //   top: 0,
          //   right: 0,
          //   child: ElevatedButton(
          //     onPressed: onTap,
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.pink,
          //       foregroundColor: Colors.white,
          //       padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          //     ),
          //     child: Text('Add To Cart'),
          //   ),
          // ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove, size: 20),
                  ),
                  Text(
                    '1',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, size: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // );
  }
}
