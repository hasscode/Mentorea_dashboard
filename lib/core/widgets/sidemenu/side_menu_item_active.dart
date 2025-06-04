import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/models/side_menu_item_model.dart';
import '../../theme/app_text_styles.dart';

class SideMenuItemActive extends StatelessWidget {
  SideMenuItemActive({super.key, required this.sideMenuItemModel});
  SideMenuItemModel sideMenuItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 30),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xff2975B3),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4))),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff2975B3),
                  borderRadius: BorderRadius.circular(6)),
              child: ListTile(
                title: Container(
                    height: 19,
                    width: 56,
                    child: FittedBox(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          sideMenuItemModel.title,
                          style: AppStyles.styleSemiBold14
                              .copyWith(color: Colors.white),
                        ))),
                leading: SvgPicture.asset(
                  sideMenuItemModel.icon,
                  width: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
