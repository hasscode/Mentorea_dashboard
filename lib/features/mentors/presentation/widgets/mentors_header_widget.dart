import 'package:flutter/cupertino.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';

import '../../../../../core/widgets/view_header_widget.dart';
import 'package:flutter/material.dart';
class MentorsHeaderWidget extends StatelessWidget {
  final TextEditingController searchController;

  const MentorsHeaderWidget({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomViewHeaderWidget(title: 'Mentors'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 40),
            child: SearchBar(

              controller: searchController,
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(0),
              leading: Icon(CupertinoIcons.search, color: Color(0xff4D4E50)),
              hintText: 'Search Mentors',
              hintStyle: MaterialStateProperty.all(
                AppStyles.styleSemiBold12.copyWith(color: Color(0xff4D4E50)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
