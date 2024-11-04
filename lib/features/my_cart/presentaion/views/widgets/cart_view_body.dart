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
    CartItem(name: 'Bell Pepper Red', quantity: '1kg', price: 4.99, image: Assets.PepperImage),
    CartItem(name: 'Egg Chicken Red', quantity: '4pcs', price: 1.99, image: Assets.VegetablesImage),
    CartItem(name: 'Organic Bananas', quantity: '12kg', price: 3.00, image: Assets.actionDoneImage),
    CartItem(name: 'Ginger', quantity: '250gm', price: 2.99, image: Assets.appleImage),
    //   CartItem(name: 'Bell Pepper Red', quantity: '1kg', price: 4.99, image: Assets.PepperImage),
    // CartItem(name: 'Egg Chicken Red', quantity: '4pcs', price: 1.99, image: Assets.VegetablesImage),
    // CartItem(name: 'Organic Bananas', quantity: '12kg', price: 3.00, image: Assets.actionDoneImage),
    // CartItem(name: 'Ginger', quantity: '250gm', price: 2.99, image: Assets.appleImage),
  ];

  void removeItem(int index) {
  if (index >= 0 && index < cartItems.length) {
    setState(() {
      cartItems.removeAt(index);
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart',style:Styles.textStyle26,),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(cartItem: cartItems[index],widget:  IconButton(
            icon: Icon(Icons.close),
           onPressed: () => removeItem(index),
          ), );
              },
            ),
          ),
          CheckoutButton(totalPrice: 12.96),
        ],
      ),
    );
  }
}





  
