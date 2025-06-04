import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_images.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';

import '../../data/models/team_member_model.dart';

class TeamMemberCardWidget extends StatelessWidget {
   TeamMemberCardWidget({super.key,required this.teamMemberModel});
TeamMemberModel teamMemberModel;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46),
          child: Column(

            children: [

              Spacer(flex: 3,),
          SizedBox(
            width: 140,
            height: 140,
            child: FittedBox(
              child: CircleAvatar(

                backgroundImage: AssetImage(teamMemberModel.img,),
              ),
            ),
          ) ,
           Spacer(flex: 2,),
            FittedBox(child: Text(teamMemberModel.name,style: AppStyles.styleBold16,)),

            FittedBox(child: Text(teamMemberModel.role,style: AppStyles.styleSemiBold14.copyWith(color: Color(0xff797A7C)),)),
              Spacer(flex: 1,),
            FittedBox(child: Text(teamMemberModel.eMail,style: AppStyles.styleRegular14.copyWith(color: Color(0xff4D4E50)),)),
              Spacer(flex: 1,),

          ],),
        ),
      ),
    );
  }
}
