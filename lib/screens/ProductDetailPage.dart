import 'package:flutter/material.dart';
import 'package:food_app_v1/dto/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Text(product.name),
    );
  }
}
