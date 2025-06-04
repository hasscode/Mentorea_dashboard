import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/features/team/presentation/widgets/upload_new_member_image.dart';

import 'add_new_member_form.dart';


class AddNewMemberCard extends StatelessWidget {
   AddNewMemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
color: Color(0xffB9B9B9),
        ),color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 60),
        child: Column(children: [
          SizedBox(height: 60,),
          UploadNewMemberImage(),
          SizedBox(height: 40,),
          AddNewMemberForm(),

        ],
        ),
      )
    );
  }
}
