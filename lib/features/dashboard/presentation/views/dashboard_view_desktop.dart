import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_images.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';
import '../../data/models/dashboard_card_model.dart' show DashboardCardModel;
import '../widgets/dashboard_card_widget.dart';

import '../widgets/dashboard_line_chart_widget.dart';

class DashboardViewDesktop extends StatelessWidget {
  DashboardViewDesktop({super.key});
  List<DashboardCardModel> cards = [
    DashboardCardModel(
        title: 'Total User', subtitle: 40689, icon: Assets.iconTotalUsers),
    DashboardCardModel(
        title: 'Total Sessions',
        subtitle: 2068,
        icon: Assets.iconTotalSessions),
    DashboardCardModel(
        title: 'Total Posts', subtitle: 1241, icon: Assets.iconTotalPosts),
    DashboardCardModel(
        title: 'Total Sessions',
        subtitle: 2068,
        icon: Assets.iconTotalSessions),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

       Padding(
         padding: const EdgeInsets.all(30.0),
         child: CustomViewHeaderWidget(title: 'Dashboard'),
       ),

        Center(
          child: SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (context, i) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: DashboardCardWidget(
                        dashboardCardModel: cards[i],
                      ),
                    )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: DashboardLineChartWidget(),
        )
      ],
    );
  }
}

// Row(
//   children: [
//     Expanded(child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: DashboardCardWidget(dashboardCardModel: cards[0],),
//     )),
//     Expanded(child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: DashboardCardWidget(dashboardCardModel: cards[1],),
//     )),
//     Expanded(child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: DashboardCardWidget(dashboardCardModel: cards[2],),
//     )),
//     Expanded(child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: DashboardCardWidget(dashboardCardModel: cards[3],),
//     )),
//   ],
// ),
