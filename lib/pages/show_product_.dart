import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;

  ProductDetailPage({
    required this.productName,
    required this.productPrice,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              productImage,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              productName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              productPrice,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Added to Cart')),
                    );
                  },
                  child: Text('Add to Cart'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Buy Now')),
                    );
                  },
                  child: Text('Buy Now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
