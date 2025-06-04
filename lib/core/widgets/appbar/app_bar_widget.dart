import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/appbar/admin_item_widget.dart';
import 'package:mentorea_dashboard/core/widgets/sidemenu/logout_alert_dialog.dart';
import 'package:mentorea_dashboard/core/widgets/custom_button.dart';
import '../../theme/app_images.dart';
import '../../theme/app_text_styles.dart';
class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
        child: Row(

          children: [

            Spacer(),
        AdminItemWidget(),

          ],
        ),
      ),
    );
  }
}
