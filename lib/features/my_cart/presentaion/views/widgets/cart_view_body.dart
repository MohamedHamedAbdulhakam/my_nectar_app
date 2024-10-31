import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/utils/assets.dart';

class CartViewBody extends StatelessWidget {
   CartViewBody({super.key});
    final List<CartItem> cartItems = [
    CartItem(name: 'Bell Pepper Red', quantity: '1kg', price: 4.99, image: Assets.PepperImage),
    CartItem(name: 'Egg Chicken Red', quantity: '4pcs', price: 1.99, image: Assets.VegetablesImage),
    CartItem(name: 'Organic Bananas', quantity: '12kg', price: 3.00, image: Assets.actionDoneImage),
    CartItem(name: 'Ginger', quantity: '250gm', price: 2.99, image: Assets.appleImage),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(cartItem: cartItems[index]);
              },
            ),
          ),
          CheckoutButton(totalPrice: 12.96),
        ],
      ),
    );
  }
}

class CartItem {
  final String name;
  final String quantity;
  final double price;
  final String image;

  CartItem({required this.name, required this.quantity, required this.price, required this.image});
}

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;

  CartItemWidget({required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Image.asset(cartItem.image, width: 60, height: 60), // Image of item
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cartItem.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('${cartItem.quantity}, Price', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Text('\$${cartItem.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 16)),
          const SizedBox(width: 10),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {},
              ),
              Text('1'), // Quantity
              IconButton(
                icon: Icon(Icons.add_circle_outline),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class CheckoutButton extends StatelessWidget {
  final double totalPrice;

  CheckoutButton({required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: Size(200, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text('Go to Checkout', style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
          Text(
            '\$${totalPrice.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
  
