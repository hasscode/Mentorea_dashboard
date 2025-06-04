import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
bool addNewMemberPageSelected=false;
class TeamHeaderWidget extends StatelessWidget {
  const TeamHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomViewHeaderWidget(title: 'Team'),
        Spacer(),
        CustomButton(color: Color(0xff2975B3), height: 48, width:147, text: 'Add New Member', borderRadius: 6, onTap: (){
         addNewMemberPageSelected =true ;

        }, textStyle: AppStyles.styleBold14.copyWith(color: Colors.white))
      ],
    );
  }
}
