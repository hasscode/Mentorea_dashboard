import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/adaptive_layout_builder.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/home_view_desktop.dart';



class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  GlobalKey<FormState> formKey = GlobalKey();
  bool isChecked = false;
  bool isLoading =false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Form(

        key: formKey,
          child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 57),
            child: CustomTextFormField(
              hintText: 'Joe_Doe',
              title: 'Username',
              obscureText: false,
              onChanged: (d) {},
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                final usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');
                if (!usernameRegex.hasMatch(value)) {
                  return 'Username must contain only letters, numbers, and underscores';
                }
                if (!value.contains('_')) {
                  return 'Username must include at least one underscore';
                }
                return null;
              },
            ),

          ),
          SizedBox(
            height: 43,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 57.0),
            child:
            CustomTextFormField(
              hintText: '• • • • • •',
              title: 'Password',
              obscureText: true,
              onChanged: (d) {},
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                if (!RegExp(r'[A-Z]').hasMatch(value)) {
                  return 'Password must contain an uppercase letter';
                }
                return null;
              },
            ),

          ),
          SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:  50.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: Color(0xff050A30),
                    checkColor: Colors.white,
                  ),
                  Text(
                    "Remember Password",
                    style: AppStyles.styleSemiBold18.copyWith(color: Color(0xff797A7C)),
                  ),
                  Spacer(),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 105.0),
            child: CustomButton(

                color: Color(0xff050A30),
                height: 56,
                width: double.infinity,
                text: 'Sign In',
                textStyle: AppStyles.styleBold20.copyWith(color: Colors.white),
                borderRadius: 8,
                onTap: () {
      if (formKey.currentState!.validate()) {
        setState(() {

        });
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AdaptiveLayoutBuilder(mobile:(context)=>SizedBox() ,tablet:(context)=>SizedBox() ,desktop:(context)=>HomeViewDesktop() ,)));

      }

                }),
          ),
        ],
      )),
    );
  }
}
