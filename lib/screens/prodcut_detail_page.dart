import 'package:flutter/material.dart';
import 'package:food_app_v1/dto/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(

              background: Image.network(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
