import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';


class LoginCardHeaderWidget extends StatelessWidget {
  const LoginCardHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55.0),
      child: Column(
        children: [
          Text('Login to Account',style: AppStyles.styleBold32,),
          SizedBox(height: 26,),
          Text('Please enter your email and password to continue',style: AppStyles.styleSemiBold18.copyWith(color: Color(0xff4D4E50)),)
        ],
      ),
    );
  }
}
