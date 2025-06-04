import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/sidemenu/side_menu_item_active.dart';
import 'package:mentorea_dashboard/core/widgets/sidemenu/side_menu_item_disable.dart';
import '../../data/models/side_menu_item_model.dart';

class SideMenuItem extends StatelessWidget {
  SideMenuItem(
      {super.key, required this.sideMenuItemModel, required this.isActive});
  SideMenuItemModel sideMenuItemModel;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: isActive
          ? SideMenuItemActive(sideMenuItemModel: sideMenuItemModel)
          : SideMenuItemDisable(
              sideMenuItemModel: sideMenuItemModel), // New selected view
    );
  }
}
