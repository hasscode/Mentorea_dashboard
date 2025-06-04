import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_dark_theme_toggle/light_dark_theme_toggle.dart';


import '../../../../../core/theme/app_text_styles.dart';
import '../../data/enums/theme_states.dart';
import '../../logic/app theme cubit/app_theme_cubit.dart';
class ThemeChangerWidget extends StatefulWidget {
  const ThemeChangerWidget({super.key});

  @override
  State<ThemeChangerWidget> createState() => _ThemeChangerWidgetState();
}

class _ThemeChangerWidgetState extends State<ThemeChangerWidget> {

  @override
  Widget build(BuildContext context) {
    bool darkTheme = BlocProvider.of<AppThemeCubit>(context).darkThemeValue;
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xffDEDEDE))
      ),
      child: Padding(
        padding: const EdgeInsets.all( 20),
        child: Row(children: [
          Text('Theme',style: AppStyles.styleSemiBold16,),
          Spacer(),
          LightDarkThemeToggle(
            value: darkTheme,

            onChanged: (bool value) {
             setState(() {
               darkTheme=value;
               BlocProvider.of<AppThemeCubit>(context).changeTheme(value?ThemeState.dark:ThemeState.light);
             });
            },
            size: 35.0,
            themeIconType: ThemeIconType.classic,
            color: darkTheme?Colors.black: Colors.orange,
            tooltip: darkTheme? "dark mode":"light mode" ,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          ),

        ],),
      ),
    );
  }
}
