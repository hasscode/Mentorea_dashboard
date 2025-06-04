import 'package:flutter/material.dart';


import '../theme/app_text_styles.dart';

class CustomDropDownMenuButton extends StatelessWidget {
  final String? initialValue;
  final List<String> items;
  final String? hintText;
  final Function(String?) onChanged;

  const CustomDropDownMenuButton({
    required this.initialValue,
    required this.items,
     this.hintText,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
    dropdownColor: Colors.white,
      underline: SizedBox.shrink(),
      value: initialValue,
      isExpanded: true,
      hint: Text(hintText??""),
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}




