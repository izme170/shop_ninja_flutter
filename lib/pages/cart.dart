import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cartItems = [
      {
        'productName': 'Lenovo Legion 9i Gen 8',
        'productPrice': '\$3,419',
        'productImage': 'assets/images/product1.jpg',
        'quantity': '1'
      },
      {
        'productName': 'Nike Air Force 1 \'07',
        'productPrice': '₱5,495',
        'productImage': 'assets/images/product2.png',
        'quantity': '1'
      },
      {
        'productName': 'ASUS BE96U Tri-Band',
        'productPrice': '\$699.99',
        'productImage': 'assets/images/product3.jpg',
        'quantity': '1'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (BuildContext context, int index) {
          final cartItem = cartItems[index];
          return ListTile(
            leading: Image.asset(
              cartItem['productImage']!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(cartItem['productName']!),
            subtitle: Text(cartItem['productPrice']!),
            trailing: Text('Quantity: ${cartItem['quantity']}'),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Total: \$' + _calculateTotal(cartItems),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _calculateTotal(List<Map<String, String>> cartItems) {
    double total = 0;
    for (var item in cartItems) {
      total +=
          double.parse(item['productPrice']!.replaceAll(RegExp(r'[^\d.]'), ''));
    }
    return total.toStringAsFixed(2);
  }
}
