import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/custom_drop_down_menu_button.dart';
class LanguageChangerWidget extends StatefulWidget {
  const LanguageChangerWidget({super.key});

  @override
  State<LanguageChangerWidget> createState() => _LanguageChangerWidgetState();
}

class _LanguageChangerWidgetState extends State<LanguageChangerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffDEDEDE))
      ),
      child: Padding(
        padding: const EdgeInsets.all( 20),
        child: Row(children: [
          Text('Language',style: AppStyles.styleSemiBold16,),
          Spacer(),
          SizedBox(
            width: 80,
            child: CustomDropDownMenuButton(initialValue: selectedLanguage, items: languages, onChanged: (v){setState(() {
              selectedLanguage=v!;
            }); }),
          )

        ],),
      ),
    );
  }
}
String? selectedLanguage ='English';
List<String>languages=['Arabic','English'];