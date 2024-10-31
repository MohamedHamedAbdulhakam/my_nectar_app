
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_check_box_list_tile.dart';

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
        ),
        
        CustomCheckboxListTile(
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
        SizedBox(height:150,),
        CustomButton(text: 'Apply Filter', onPressed: () {
           GoRouter.of(context).push(AppRouter.kCarttView);
        },),
        SizedBox(height: 10,)
      ],
    );
  }
}
