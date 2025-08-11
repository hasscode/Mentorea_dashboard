import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/features/inbox/presentation/views/inbox_view.dart';


import '../../features/dashboard/presentation/views/dashboard_view_desktop.dart';
import '../../features/mentors/presentation/views/mentors_view.dart';
import '../../features/payment transaction/presentation/views/payment_transactions_view.dart';
import '../../features/sessions/presentation/views/sessions_view.dart';
import '../../features/settings/presentation/views/settings_view.dart';
import '../../features/team/presentation/views/add_new_member_view.dart';
import '../../features/team/presentation/views/team_view_desktop.dart';
import '../../features/team/presentation/widgets/team_header_widget.dart';
import '../../features/todo/presentation/views/to_do_view.dart';
import 'adaptive_layout_builder.dart';

class SelectedView extends StatelessWidget {
  final int selectedIndex;

  SelectedView({super.key, required this.selectedIndex});

  final List<Widget> views = [
    DashboardViewDesktop(),
    MentorsView(),
    SessionsView(),
    InboxView(),
    PaymentTransactionsView(),
    ToDoView(),
    AddNewMemberView(),
    // addNewMemberPageSelected ? AddNewMemberView():TeamViewDesktop(),
    SettingsView(),

  ];

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
      child: views[selectedIndex]
    );
  }
}
