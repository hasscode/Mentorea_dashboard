import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorea_dashboard/features/sessions/presentation/widgets/sessions_filter_widget.dart';


import '../../../../../core/theme/app_images.dart';
import '../../../../../core/theme/app_text_styles.dart';
class SessionResetFilter extends StatefulWidget {
  const SessionResetFilter({super.key});

  @override
  State<SessionResetFilter> createState() => _SessionResetFilterState();
}

class _SessionResetFilterState extends State<SessionResetFilter> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          sessionsFilterDateTime =null;
          sessionsFilterStatusValue ='All';
        });
      },
      child: ListTile(
        title:Text('Reset Filter',style: AppStyles.styleSemiBold14.copyWith(color: Color(0xffEA0234)),) ,
        leading: SvgPicture.asset(Assets.iconReset),
      ),
    );
  }
}
