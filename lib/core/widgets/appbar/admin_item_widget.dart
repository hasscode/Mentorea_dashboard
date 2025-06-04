import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../theme/app_images.dart';
import '../../theme/app_text_styles.dart';
class AdminItemWidget extends StatelessWidget {
  const AdminItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      CircleAvatar( radius: 22,child: SvgPicture.asset(Assets.imagesAdminPic),),
      SizedBox(width: 15,),
      Text('Hassan Hany',style: AppStyles.styleBold14.copyWith(color: Color(0xff404040)),)
    ],);
  }
}
