import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';
import 'identity_section.dart';
import 'profile_list_tile.dart';

class AccountViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile',style: Styles.textStyle26,),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Profile Info Section
          const Padding(
            padding:  EdgeInsets.all(16.0),
            child: IdentitySection(),
          ),
          Divider(),

          // Options List Section
          Expanded(
            child:   ListView(
             children: [
                ProfileListTile(
                  icon:  Icons.shopping_bag_outlined,
                  title: 'Orders',
                ),
                Divider(thickness: .2,),
                ProfileListTile(
                  icon: Icons.person_outline,
                  title: 'My Details',
                ),
                Divider(thickness: .2,),
                ProfileListTile(
                  icon: Icons.location_on_outlined,
                  title: 'Delivery Address',
                ),
                Divider(thickness: .2,),
                ProfileListTile(
                  icon: Icons.payment,
                  title: 'Payment Methods',
                ),
                Divider(thickness: .2,),
                ProfileListTile(
                  icon: Icons.card_giftcard,
                  title: 'Promo Card',
                ),
                Divider(thickness: .2,),
                ProfileListTile(
                  icon: Icons.notifications_outlined,
                  title: 'Notifications',
                ),
                Divider(thickness: .2,),
                ProfileListTile(
                  icon: Icons.help_outline,
                  title: 'Help',
                ),
                Divider(thickness: .2,),
                ProfileListTile(
                  icon: Icons.info_outline,
                  title: 'About',
                ),
              ],
            ),
          ),

          // Logout Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(text: 'Log out',onPressed: () {
              
            },),
          ),
        ],
      ),
    );
  }
}
