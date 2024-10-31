// import 'package:flutter/material.dart';
// import 'package:my_nectar_app/constants.dart';

// class FilterScreen extends StatefulWidget {
//   @override
//   _FilterScreenState createState() => _FilterScreenState();
// }

// class _FilterScreenState extends State<FilterScreen> {
//   // Track selections for each category and brand
//   Map<String, bool> categories = {
//     'Eggs': true,
//     'Noodles & Pasta': false,
//     'Chips & Crisps': false,
//     'Fast Food': false,
//   };

//   Map<String, bool> brands = {
//     'Individual Collection': false,
//     'Cocola': true,
//     'Ifad': false,
//     'Kazi Farmas': false,
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Filters"),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.close),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//              const  Text("Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               ...categories.keys.map((category) => CheckboxListTile(
//                 controlAffinity: ListTileControlAffinity.leading,
//                     title: Text(category),
//                     value: categories[category],
//                     activeColor: keyPrimaryColor,
//                     onChanged: (value) {
//                       setState(() {
//                         categories[category] = value!;
//                       });
//                     },
//                   )),
//               SizedBox(height: 16),
//               Text("Brand", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               ...brands.keys.map((brand) => CheckboxListTile(
//                     title: Text(brand),
//                     value: brands[brand],
//                     activeColor: Colors.green,
//                     onChanged: (value) {
//                       setState(() {
//                         brands[brand] = value!;
//                       });
//                     },
//                   )),
//               Spacer(),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   // primary: Colors.green,
//                   minimumSize: Size(double.infinity, 50),
//                 ),
//                 onPressed: () {
//                   // Apply filter logic here
//                 },
//                 child: Text("Apply Filter"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/core/widgets/custom_button.dart';
import 'package:my_nectar_app/features/explore/presentation/views/widgets/custom_check_box_list_tile.dart';

class FilterAction extends StatefulWidget {
  const FilterAction({super.key});

  @override
  State<FilterAction> createState() => _FilterActionState();
}

class _FilterActionState extends State<FilterAction> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Text("Category",style: Styles.textStyle26,),
        ),
        CustomCheckboxListTile(
          title: 'Eges',
        ),
        CustomCheckboxListTile(
          title: 'Nodels&&Pasta',
        ),CustomCheckboxListTile(
          title: 'Chips',
        ),CustomCheckboxListTile(
          title: 'Fast Foos',
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Text("Brand",style: Styles.textStyle26,),
        ),
        CustomCheckboxListTile(
          title: 'individual Callections',
        ),
        CustomCheckboxListTile(
          title: 'Spiro Spates',
        ),CustomCheckboxListTile(
          title: 'Ifad',
        ),CustomCheckboxListTile(
          title: 'Friday',
        ),
        SizedBox(height: 80,),
        CustomButton(text: 'Apply Filter', onPressed: () {
          
        },),
        SizedBox(height: 10,)
      ],
    );
  }
}
