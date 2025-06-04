import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_dashboard/core/widgets/sidemenu/side_menu_item.dart';
import '../../data/models/side_menu_item_model.dart';
import '../../theme/app_images.dart';
import '../../theme/app_text_styles.dart';
import 'logout_alert_dialog.dart';
import '../custom_button.dart';

class SideMenuWidget extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const SideMenuWidget({super.key, required this.selectedIndex, required this.onItemSelected});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  List<SideMenuItemModel> items = [
    SideMenuItemModel(title: 'Dashboard', icon: Assets.imagesDashboard),
    SideMenuItemModel(title: 'Mentors', icon: Assets.imagesMentors),
    SideMenuItemModel(title: 'Sessions', icon: Assets.imagesSessions),
    SideMenuItemModel(title: 'Inbox', icon: Assets.imagesInbox),
    SideMenuItemModel(title: 'Payment Transactions', icon: Assets.imagesPayment),
    SideMenuItemModel(title: 'Todo', icon: Assets.imagesTodo),
    SideMenuItemModel(title: 'Team', icon: Assets.imagesTeam),
    SideMenuItemModel(title: 'Settings', icon: Assets.imagesSettings),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 20),
          DrawerHeader(child: SvgPicture.asset(Assets.imagesMentoreaIcon, width: 150)),
          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, i) => GestureDetector(
                onTap: () {
                  if (widget.selectedIndex != i) {
                    widget.onItemSelected(i);
                  }
                },
                child: SideMenuItem(
                  sideMenuItemModel: items[i],
                  isActive: widget.selectedIndex == i,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all( 20),
            child: FittedBox(
              child: CustomButton(color: Color(0xffA81005), height: 48, width: 147, text: 'Logout', borderRadius: 6, onTap: (){
                showDialog(context: context, builder: (context)=>LogoutAlertDialog());
              
              }, textStyle: AppStyles.styleBold14.copyWith(color: Colors.white),icon: Assets.imagesLogout,iconColor: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
