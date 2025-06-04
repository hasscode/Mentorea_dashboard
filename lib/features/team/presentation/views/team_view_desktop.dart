import 'package:flutter/material.dart';


import '../../../../../core/theme/app_images.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/adaptive_layout_builder.dart';
import '../../../login/presentaion/views/login_view_desktop.dart';
import '../../data/models/team_member_model.dart';
import '../widgets/team_header_widget.dart';
import '../widgets/team_member_card_widget.dart';
class TeamViewDesktop extends StatelessWidget {
  TeamViewDesktop({super.key});
List<TeamMemberModel>team=[
  TeamMemberModel(img: Assets.imagesPerson, name: 'Jason Price', role: 'Admin', eMail: 'janick_parisian@yahoo.com'),
  TeamMemberModel(img: Assets.imagesPerson, name: 'Jason Price', role: 'Admin', eMail: 'janick_parisian@yahoo.com'),
  TeamMemberModel(img: Assets.imagesPerson, name: 'Jason Price', role: 'Admin', eMail: 'janick_parisian@yahoo.com'),
  TeamMemberModel(img: Assets.imagesPerson, name: 'Jason Price', role: 'Admin', eMail: 'janick_parisian@yahoo.com'),
  TeamMemberModel(img: Assets.imagesPerson, name: 'Jason Price', role: 'Admin', eMail: 'janick_parisian@yahoo.com'),
  TeamMemberModel(img: Assets.imagesPerson, name: 'Jason Price', role: 'Admin', eMail: 'janick_parisian@yahoo.com'),
];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all( 30.0),
            child: TeamHeaderWidget()
        ),
        Expanded(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 20.0,

          ),

              itemCount: team.length
              ,  itemBuilder: (context,i)=>TeamMemberCardWidget(teamMemberModel: team[i],)),
        ),
      ],

    ) ;
  }
}
