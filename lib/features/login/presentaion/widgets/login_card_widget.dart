import 'package:flutter/material.dart';
import 'login_card_header_widget.dart';
import 'login_form_widget.dart';
class LoginCardWidget extends StatelessWidget {
  const LoginCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 630,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.01, color: Colors.transparent),
          borderRadius: BorderRadius.circular(24),
        ),
        shadows: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 10.07,
            offset: const Offset(1.01, 1.01),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 90),
          LoginCardHeaderWidget(),
          SizedBox(
            height: 37,
          ),
          LoginFormWidget(),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
