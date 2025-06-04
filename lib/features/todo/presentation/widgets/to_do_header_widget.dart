import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'add_new_task_widget.dart';
class ToDoHeaderWidget extends StatelessWidget {
  const ToDoHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomViewHeaderWidget(title: 'To-Do List'),
        Spacer(),
        CustomButton(color: Color(0xff2975B3), height: 48, width:147, text: 'Add New Task', borderRadius: 6, onTap: (){

showDialog(context: context, builder: (context)=>AddNewTaskWidget());
        }, textStyle: AppStyles.styleBold14.copyWith(color: Colors.white))
      ],
    );
  }
}
