import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';
import 'package:my_nectar_app/core/utils/functions/styles.dart';
import 'package:my_nectar_app/features/login_screen/presentaion/views/widgets/custom_button.dart';

class LoginScreenViewBody extends StatelessWidget {
  const LoginScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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
          Positioned(
            top: 100,
            right: 200,
            child: Image.asset(
              'assets/Group.png',
              height: 55,
              width: 47,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(height: 100),

                  // Title
                  const Text('Loging ', style: Styles.textStyle26
                      // textAlign: TextAlign.center,
                      ),
                  const SizedBox(height: 5),
                  const Text('Enter your email and passowrd',
                      style: Styles.textStyle16),
                  const SizedBox(height: 30),
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
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      // border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Handle forgot password action
                      },
                      child: GestureDetector(
                          onTap: () {
                            GoRouter.of(context)
                                .push(AppRouter.keyforgetpassword);
                          },
                          child: const Text('Forgot Password?')),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Login Button
                  const CustomButton(text: 'Login In'),
                  const SizedBox(height: 20),

                  // Signup Link
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle signup action
                      },
                      child: const Text.rich(
                        TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
