import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String title;
  final bool obscureText;
  final int? maxLines;
  final Function(String?) onChanged;
  final String? Function(String?)? validator;

  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.onChanged,
    required this.obscureText,
    required this.title,
    this.maxLines,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: AppStyles.styleSemiBold18.copyWith(color: Color(0xff4D4E50)),
          ),
        ),
        SizedBox(height: 6),
        TextFormField(
          maxLines: maxLines ?? 1,
          obscureText: obscureText,
          obscuringCharacter: '•',
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffF1F4F9),
            contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            hintText: hintText,
            hintStyle: AppStyles.styleSemiBold18.copyWith(color: Color(0xffA6A6A6)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(color: Color(0xffD5D5D5)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(color: Color(0xff050A30)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(color: Color(0xffD5D5D5)),
            ),
          ),
        ),
      ],
    );
  }
}
