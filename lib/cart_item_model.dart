// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/product_model.dart';

class CartItem {
  int quantity;
  Product product;
  CartItem({ this.quantity =1, required this.product});
}

List<CartItem> cartItem = [];
