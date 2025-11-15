import 'package:ecommerce/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 250, child: Image.network(product.image)),
          SizedBox(height: 24),

          Text(
            product.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 12),
          Row(
            spacing: 6,
            children: [
              Icon(Icons.star, color: Colors.orange),
              Text(
                product.rating.count.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Spacer(),

              Text("${product.rating.count} reviews"),
            ],
          ),

          SizedBox(height: 12),

          Text(
            "\$ ${product.price}",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
