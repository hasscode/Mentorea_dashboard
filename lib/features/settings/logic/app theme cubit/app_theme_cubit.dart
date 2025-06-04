import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_dashboard/core/helper/constants.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../../data/enums/theme_states.dart';
import 'app_theme_states.dart';

class AppThemeCubit extends Cubit<AppThemeStates> {
  late bool darkThemeValue;

  AppThemeCubit() : super (AppThemeInitialState());

changeTheme(ThemeState state)async{

switch(state){
  case ThemeState.initial :
if(sharedPreferences!.getString('theme')!=null){
  if(sharedPreferences!.getString('theme')=='l'){
    darkThemeValue=false;
    emit(AppThemeLightState());
  } else{darkThemeValue=true; emit(AppThemeDarkState());}

}

    break;

  case ThemeState.light :
    darkThemeValue =false;
    sharedPreferences!.setString('theme', 'l');
    emit(AppThemeLightState());
break;

  case ThemeState.dark :
    darkThemeValue = true;
    sharedPreferences!.setString('theme', 'd');

    emit(AppThemeDarkState());
    break;


}

}


}