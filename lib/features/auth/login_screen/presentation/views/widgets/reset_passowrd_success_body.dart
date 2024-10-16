import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/features/home/presentaion/views/home_view.dart';
import 'package:my_nectar_app/features/on_boarding/presentation/views/on_boarding_view.dart';

class ResetPassowrdSuccessBody extends StatefulWidget {
  const ResetPassowrdSuccessBody({super.key});

  @override
  State<ResetPassowrdSuccessBody> createState() => _ResetPassowrdSuccessBodyState();
}

class _ResetPassowrdSuccessBodyState extends State<ResetPassowrdSuccessBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        // Get.to(() => const HomeView(),
        //     transition: Transition.leftToRight, duration: KTranstionDuration);
        // ignore: use_build_context_synchronously
        Navigator.of(context).push(MaterialPageRoute(builder: (con) {
          return HomeView();
        }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
       child: Column(
         children: [
           const SizedBox(height: 90),
           Container(
             width: 240,
             height: 218,
             child: Image.asset(Assets.actionDoneImage),
           ),
           const SizedBox(
             height: 30,
           ),
           const Text(
             "Congratulation",             style: Styles.textStyle26,
           ),
           const SizedBox(
             height: 30,
           ),
           Align(
               alignment: Alignment.center,
               child: Text(
                 'Your change Password is Success \n            Welcome to our app',
                 style: Styles.textStyle16.copyWith(color: kGreyColor),
               ))
         ],
       ),
     );
  }
}


// class ResetPassowrdSuccessBody extends StatelessWidget {
//   const ResetPassowrdSuccessBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(60),
//       child: Column(
//         children: [
//           const SizedBox(height: 90),
//           Container(
//             width: 240,
//             height: 218,
//             child: Image.asset(Assets.actionDoneImage),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           const Text(
//             "Congratulation",
//             style: Styles.textStyle26,
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           Align(
//               alignment: Alignment.center,
//               child: Text(
//                 'Your change Password is Success \n            Welcome to our app',
//                 style: Styles.textStyle16.copyWith(color: kGreyColor),
//               ))
//         ],
//       ),
//     );
//   }
// }
