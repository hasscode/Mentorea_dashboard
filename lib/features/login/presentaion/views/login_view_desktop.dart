import 'package:flutter/material.dart';

import '../widgets/login_card_widget.dart';



class LoginViewDesktop extends StatefulWidget {
  const LoginViewDesktop({super.key});

  @override
  State<LoginViewDesktop> createState() => _LoginViewDesktopState();
}

class _LoginViewDesktopState extends State<LoginViewDesktop> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff050A30), Color(0xffC4D4FD)],
            stops: [0.5, 0.5],
          ),
        ),
        child: SingleChildScrollView(

          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60.0),
              child: Column(
                children: [
                  LoginCardWidget()
                ],
              ),
            ),
          ),
        ), // your body content.
      ),
    );
  }
}
