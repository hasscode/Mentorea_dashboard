import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/view_header_widget.dart';
class InboxHeaderWidget extends StatelessWidget {
  const InboxHeaderWidget({super.key,required this.searchController});
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomViewHeaderWidget(title: 'Inbox'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 40),
            child: SearchBar(

              controller: searchController,
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(0),
              leading: Icon(CupertinoIcons.search, color: Color(0xff4D4E50)),
              hintText: 'Search Messages',
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
