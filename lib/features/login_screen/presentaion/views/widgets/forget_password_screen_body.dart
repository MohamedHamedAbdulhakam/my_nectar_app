import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';
import 'package:my_nectar_app/features/login_screen/presentaion/views/widgets/custom_button.dart';

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
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
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
                CustomButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                  'Reset Passowrd',
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Enter the code that was sent to yout email address',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Enter the five digit code ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(.5)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  maxLength: 5,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const CustomButton(text: 'Send Code '),
                              ],
                            ),
                          );
                        },
                      );
                      // Handle login action
                    },
                    text: 'Countinue'),

                // Signup Link
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
