import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/features/my_cart/presentaion/views/widgets/cart_view_body.dart';

class CartItem {
  final String name;
  final String quantity;
  final double price;
  final String image;

  CartItem(
      {required this.name,
      required this.quantity,
      required this.price,
      required this.image});
}

class CartItemWidget extends StatefulWidget {
  final CartItem cartItem;

  CartItemWidget({required this.cartItem});

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int count = 0;
  bool istappedForAdd = false;
  bool istappedForSub = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Image.asset(widget.cartItem.image,
              width: 60, height: 60), // Image of item
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.cartItem.name,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('${widget.cartItem.quantity}, Price',
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Text('\$${widget.cartItem.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16)),
          const SizedBox(width: 10),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: istappedForSub ? keyPrimaryColor : Colors.black,
                ),
                onPressed: () {
                  if (count > 0) {
                    count--;
                    istappedForAdd = false;
                    istappedForSub = true;
                    setState(() {});
                  }
                },
              ),
              Text('$count'), // Quantity
              IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: istappedForAdd ? keyPrimaryColor : Colors.black,
                ),
                onPressed: () {
                  count++;
                  istappedForSub = false;
                  istappedForAdd = true;

                  setState(() {});
                },
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
