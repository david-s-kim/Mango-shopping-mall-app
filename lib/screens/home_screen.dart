// 홈 스크린 클래스
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'T-shirt', price: 20.00, imagePath: 'assets/tshirt.png'),
    Product(name: 'Jeans', price: 40.00, imagePath: 'assets/jeans.png'),
    Product(name: 'Sneakers', price: 60.00, imagePath: 'assets/sneakers.png'),
    Product(name: 'Jacket', price: 100.00, imagePath: 'assets/jacket.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Mall'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              elevation: 5.0, // 카드에 그림자 효과를 줍니다.
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: Image.asset(product.imagePath), // 상품 이미지
                title: Text(product.name, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                subtitle: Text('\$${product.price}', style: TextStyle(fontSize: 16.0, color: Colors.green[700])),
                onTap: () {
                  print('Selected: ${product.name}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

// 상품 모델 클래스
class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}