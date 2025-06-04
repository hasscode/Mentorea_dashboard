import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';
class UploadNewMemberImage extends StatelessWidget {
  const UploadNewMemberImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xffECECEE),
          child: Icon(Icons.photo_camera_rounded,color: Color(0xff414141),size: 35,),
        ),
        SizedBox(height: 16,),
        Text('Upload Photo',style: AppStyles.styleSemiBold14.copyWith(color: Color(0xff050A30)),)
      ],
    );
  }
}
