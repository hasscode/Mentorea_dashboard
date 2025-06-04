import 'package:flutter/material.dart';
import '../theme/app_text_styles.dart';
class CustomViewHeaderWidget extends StatelessWidget {
   CustomViewHeaderWidget({super.key,required this.title});
   String title;
  @override
  Widget build(BuildContext context) {
    return  Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: AppStyles.styleBold32.copyWith(color: Color(0xff202224)),
        ));
  }
}
