import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_nectar_app/features/login_screen/widgets/custom_button.dart';

class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios_new)),
              Image.asset(
                'assets/Group.png',
                height: 55,
                width: 47,
              ),
              const SizedBox(height: 100),

              // Title
              const Text(
                'Forget Password ',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                // textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              const Text(
                'Enter your email for verification process we will send 5 digits code to your email',
                style: TextStyle(
                  fontSize: 13,
                  // fontWeight: FontWeight.bold,
                ),
                // textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              // Email Input
              const TextField(
                
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  // border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),

              // Password Input
              
              const SizedBox(height: 10),

              // Forgot Password
           
              const SizedBox(height: 40),

              // Login Button
              const CustomButton(text: 'Countinue'),
             

              // Signup Link
              
            ],
          ),
        ),
      ),
    );
  }
}