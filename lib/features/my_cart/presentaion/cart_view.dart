import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/my_cart/presentaion/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartViewBody(),
    );
  }
}
