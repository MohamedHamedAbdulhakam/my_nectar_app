import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_nectar_app/features/login_screen/widgets/custom_button.dart';

class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          // width:100,
          // height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Mask Group.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(top: 30, left: 10, child: Icon(Icons.arrow_back_ios_new)),
        Positioned(
          top: 100,
          right: 200,
          child: Image.asset(
            'assets/Group.png',
            height: 55,
            width: 47,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 100),

                // Title
                Text(
                  'Forget Password ',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Text(
                  'Enter your email for verification process we will send 5 digits code to your email',
                  style: TextStyle(
                    fontSize: 13,
                    // fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                // Email Input
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    // border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),

                // Password Input

                SizedBox(height: 10),

                // Forgot Password

                SizedBox(height: 40),

                // Login Button
                CustomButton(text: 'Countinue'),

                // Signup Link
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
