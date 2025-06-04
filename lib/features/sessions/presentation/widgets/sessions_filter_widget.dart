import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_dashboard/core/theme/app_images.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';
import 'package:mentorea_dashboard/core/widgets/custom_drop_down_menu_button.dart';
import 'package:mentorea_dashboard/features/sessions/presentation/widgets/session_date_filter.dart';
import 'package:mentorea_dashboard/features/sessions/presentation/widgets/session_reset_filter.dart';
class SessionsFilterWidget extends StatefulWidget {
   const SessionsFilterWidget({super.key});
   static const  List<String>statuses=['All','Scheduled','Completed','In Progress','Cancelled'];

  @override
  State<SessionsFilterWidget> createState() => _SessionsFilterWidgetState();
}

class _SessionsFilterWidgetState extends State<SessionsFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color(0xffD5D5D5)),
        color: Colors.white
      ),
      child: IntrinsicHeight(
        child: Row(

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 24),
              child: SvgPicture.asset(Assets.iconFilter),
            ),
            VerticalDivider(color: Color(0xffB6B6B6),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
              child: Text('Filter By',style: AppStyles.styleBold14,),
            ),
            VerticalDivider(color: Color(0xffB6B6B6),),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical:10),
              child: CustomDropDownMenuButton(initialValue: sessionsFilterStatusValue, items: SessionsFilterWidget.statuses, hintText: 'Filter by statuses',onChanged: (v){
                setState(() {
                  sessionsFilterStatusValue =v;
                });
              },),
            )),
            VerticalDivider(color: Color(0xffB6B6B6),),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
                child: ListTile(

                  title: Text(sessionsFilterDateTime==null?"Select specific date":DateFormat.yMMMd().format(sessionsFilterDateTime!).toString(),style: AppStyles.styleBold14,),
                  trailing: SessionDateFilter(),
                ),
              ),
            ),
            VerticalDivider(color: Color(0xffB6B6B6),),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
            child: SessionResetFilter(),
          ),
        )


          ],
        ),
      ),
    );
  }
}

String? sessionsFilterStatusValue   ;
DateTime? sessionsFilterDateTime;