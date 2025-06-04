import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';

import '../widgets/sessions_filter_widget.dart';
import '../widgets/sessions_table_widget.dart';


class SessionsView extends StatelessWidget {
  const SessionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: CustomViewHeaderWidget(title: 'Sessions'),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SessionsFilterWidget(),
      ),
      SizedBox(
        height: 24,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
        child: SizedBox(
            height: 530,
            child: SessionsTableWidget(
              filterStatus: sessionsFilterStatusValue == 'All'
                  ? null
                  : sessionsFilterStatusValue,
              filterDate: sessionsFilterDateTime == null
                  ? null
                  : "${sessionsFilterDateTime?.day}-${sessionsFilterDateTime?.month}-${sessionsFilterDateTime?.year}",
            )),
      ),
    ]);
  }
}
