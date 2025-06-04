import 'package:flutter/material.dart';



import '../../../features/login/presentaion/views/login_view_desktop.dart';
import '../../theme/app_text_styles.dart';
class LogoutAlertDialog extends StatelessWidget {
  const LogoutAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      title: Text(
        'Logout',
        style: AppStyles.styleBold24,
      ),
      content: Text(
          'Are you sure to log out from this account ?'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginViewDesktop()));
            },
            child: Text(
              'log out',
              style: AppStyles.styleSemiBold16,
            )),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'stay in',
              style: AppStyles.styleSemiBold16,
            )),
      ],
    );
  }
}
