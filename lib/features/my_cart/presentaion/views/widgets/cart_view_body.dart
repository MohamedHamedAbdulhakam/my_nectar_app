import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/features/my_cart/presentaion/views/widgets/cart_item_widget.dart';
import 'package:my_nectar_app/features/my_cart/presentaion/views/widgets/checkout_button.dart';

class CartViewBody extends StatefulWidget {
  CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  final List<CartItem> cartItems = [
    CartItem(
        name: 'Bell Pepper Red',
        quantity: '1kg',
        price: 4.99,
        image: Assets.PepperImage),
    // Add more items as needed...
  ];

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart', style: Styles.textStyle26),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(
                  cartItem: cartItems[index],
                  widget: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => removeItem(index),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CheckoutButton(totalPrice: calculateTotalPrice()),
          ),
        ],
      ),
    );
  }

  double calculateTotalPrice() {
    return cartItems.fold(0, (sum, item) => sum + item.price);
  }
}