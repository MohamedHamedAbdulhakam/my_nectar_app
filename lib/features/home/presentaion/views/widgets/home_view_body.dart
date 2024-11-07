import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/features/account/presentation/account_view.dart';
import 'package:my_nectar_app/features/explore/presentation/views/find_product_view.dart';
import 'package:my_nectar_app/features/favorite/presentation/favourite_view.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/shop_view_body.dart';
import '../../../../../core/widgets/custom_list_view.dart';
import 'carous_slider_home_view.dart';
import 'categoriesa_list_view.dart';
import '../../../../../core/widgets/searsh_button.dart';
import 'sliver_app_bar_for_home_view.dart';
import 'text_section_in_home_view.dart';

class HomeViewBody extends StatefulWidget {
  HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<String> imagePaths = [
    'assets/homeImage.jpg',
  ];

  int currentIndex = 0; // Holds the current index for BottomNavigationBar

  // List of screens for each BottomNavigationBar item
  final List<Widget> screens = [
    ShopView(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: keyPrimaryColor, // Color for selected item
        unselectedItemColor: Colors.black, // Color for unselected items
        currentIndex: currentIndex, // Set the currently selected index
        onTap: (val) {
          setState(() {
            currentIndex = val; // Update selected index when an item is tapped
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Account"),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
    );
  }
}

// Example screen widgets for each BottomNavigationBar item
class ShopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShopViewBody();
  }
}

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FindProductView();
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Cart Screen'));
  }
}

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FavouriteView();
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AccountView();
  }
}
