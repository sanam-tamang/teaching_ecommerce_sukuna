import 'package:ecommerce/cart_item_model.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),

      body: ListView.builder(
        itemCount: cartItem.length,
        itemBuilder: (context, index) {
          final cart = cartItem[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                spacing: 12,
                children: [
                  Expanded(child: Image.network(cart.product.image)),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        Text(
                          cart.product.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),

                        Text("\$ ${cart.product.price}"),

                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  cart.quantity++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),

                            Text(cart.quantity.toString()),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  cart.quantity--;
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),

                            Spacer(),

                            IconButton(
                              onPressed: () {
                                setState(() {
                                  cartItem.remove(cart);
                                  // cartItem.removeAt(index)
                                });
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
