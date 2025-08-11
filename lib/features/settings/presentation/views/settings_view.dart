import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_dashboard/core/theme/app_images.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';
import 'package:mentorea_dashboard/features/settings/presentation/widgets/booking_session_widget.dart';
import 'package:mentorea_dashboard/features/settings/presentation/widgets/session_details_bottom_sheet.dart';


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
      padding: const EdgeInsets.all(25.0),
      child: BookingSessionWidget(),
    ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: BookingSessionWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: BookingSessionWidget(),
        )
    // Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
    //   child: ThemeChangerWidget(),
    // ),
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
    //       child: LanguageChangerWidget()

      ],
    );
  }
}
