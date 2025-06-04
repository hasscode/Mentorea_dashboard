import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';
import 'package:mentorea_dashboard/core/widgets/custom_button.dart';
import 'package:mentorea_dashboard/core/widgets/custom_drop_down_menu_button.dart';
import 'package:mentorea_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:mentorea_dashboard/features/team/presentation/widgets/team_header_widget.dart';

class AddNewMemberForm extends StatefulWidget {
  const AddNewMemberForm({super.key});

  @override
  State<AddNewMemberForm> createState() => _AddNewMemberFormState();
}

class _AddNewMemberFormState extends State<AddNewMemberForm> {
  List<String> genderOptions = ['Male', 'Female'];

  String selectedGender = 'Male';
  GlobalKey<FormState> formKey = GlobalKey();

  MenuController menuController = MenuController();

  bool isChecked = false;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }},
                        hintText: "Enter your first name",
                        onChanged: (d) {},
                        obscureText: false,
                        title: 'First Name')),
                SizedBox(
                  width: 60,
                ),
                Expanded(
                    child: CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }},
                        hintText: 'Enter your last name',
                        onChanged: (f) {},
                        obscureText: false,
                        title: 'Last Name')),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
                          final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                          if (!emailRegex.hasMatch(value)) {
                            return 'Enter a valid email (e.g. example@domain.com)';
                          }
                          return null;
                        },
                        hintText: "Enter your email",
                        onChanged: (d) {},
                        obscureText: false,
                        title: 'Your Email')),
                SizedBox(
                  width: 60,
                ),
                Expanded(
                    child: CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }},
                        hintText: 'Enter your phone number',
                        onChanged: (f) {},
                        obscureText: false,
                        title: 'Phone Number')),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [

                SizedBox(
                  width: 60,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Gender",
                            style: AppStyles.styleSemiBold18
                                .copyWith(color: Color(0xff4D4E50)),
                          )),
                      SizedBox(
                        height: 6,
                      ),
                      CustomDropDownMenuButton(
initialValue: selectedGender,
                          items: genderOptions,
                          hintText: 'select your gender'
                      ,onChanged: (v){
  setState(() {
    selectedGender =v!;
  });

                      },
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 2,
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(
                color: Color(0xff2975B3),
                height: 56,
                width: 274,
                text: 'Add Now',
                borderRadius: 12,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {});
                   addNewMemberPageSelected =false;
                  }
                },
                textStyle: AppStyles.styleBold18.copyWith(color: Colors.white)),
          ],
        ));
  }
}
