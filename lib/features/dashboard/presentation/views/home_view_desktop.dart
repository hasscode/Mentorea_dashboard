import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/appbar/app_bar_widget.dart';
import 'package:mentorea_dashboard/core/widgets/selected_view.dart';
import 'package:mentorea_dashboard/core/widgets/sidemenu/side_menu_widget.dart';

class HomeViewDesktop extends StatefulWidget {
  const HomeViewDesktop({super.key});

  @override
  _HomeViewDesktopState createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop> {
  int selectedView = 0;

  void updateSelectedView(int index) {
    setState(() {
      selectedView = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: SideMenuWidget(
              selectedIndex: selectedView,
              onItemSelected: updateSelectedView,
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Color(0xffF5F6FA),
              child: Column(
                children: [
                  AppBarWidget(),
                  Expanded(child: SelectedView(selectedIndex: selectedView)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
