import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';

import '../widgets/add_new_member_card.dart';

class AddNewMemberView extends StatelessWidget {
  const AddNewMemberView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 37, bottom: 37),
            child: CustomViewHeaderWidget(title: 'Add Team Member'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: AddNewMemberCard(),
          ),
          SizedBox(height: 137,),
        ],
      ),
    )
    ;
  }
}
