import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/login_screen/presentaion/views/widgets/custom_button.dart';

class SendCodeScreenBody extends StatelessWidget {
  const SendCodeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Reset Passowrd',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
         const  SizedBox(
            height: 20,
          ),
       const    Text(
            'Enter the code that was sent to yout email address',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            'Enter the five digit code ',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(.5)),
          ),
          TextFormField(
            maxLength: 5,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Enter the 5 digits code',
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
  }
}
