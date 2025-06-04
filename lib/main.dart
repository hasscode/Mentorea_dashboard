import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_dashboard/core/theme/app_dark_theme.dart';
import 'package:mentorea_dashboard/core/widgets/adaptive_layout_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/helper/constants.dart';
import 'core/theme/app_light_theme.dart';
import 'features/login/presentaion/views/login_view_desktop.dart';
import 'features/settings/data/enums/theme_states.dart';
import 'features/settings/logic/app theme cubit/app_theme_cubit.dart';
import 'features/settings/logic/app theme cubit/app_theme_states.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences =await SharedPreferences.getInstance();
  runApp(MentoreaDashboard());

}

class MentoreaDashboard extends StatelessWidget {
  const MentoreaDashboard({super.key});

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AdaptiveLayoutBuilder(mobile:(context)=>SizedBox() ,tablet:(context)=>SizedBox() ,desktop:(context)=>LoginViewDesktop() ,)
    );
  }
}
