import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';


import '../widgets/language_changer_widget.dart';
import '../widgets/theme_changer_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: CustomViewHeaderWidget(title: 'Settings'),
        ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: ThemeChangerWidget(),
    ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: LanguageChangerWidget()
        )
      ],
    );
  }
}
