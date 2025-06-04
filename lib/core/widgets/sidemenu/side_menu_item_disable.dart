import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../data/models/side_menu_item_model.dart';

class SideMenuItemDisable extends StatelessWidget {
  SideMenuItemDisable({super.key, required this.sideMenuItemModel});
  SideMenuItemModel sideMenuItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 30, right: 30),
      child: ListTile(
        title: SizedBox(
            height: 19,
            width: 56,
            child: FittedBox(
                alignment: Alignment.centerLeft,
                child: Text(
                  sideMenuItemModel.title,
                  style: AppStyles.styleSemiBold14,
                ))),
        leading: SvgPicture.asset(
          sideMenuItemModel.icon,
          width: 22,
        ),
      ),
    );
  }
}
