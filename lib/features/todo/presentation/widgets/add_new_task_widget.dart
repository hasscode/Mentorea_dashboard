import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';
import 'package:mentorea_dashboard/core/widgets/custom_button.dart';
import 'package:mentorea_dashboard/core/widgets/custom_text_form_field.dart';

import 'add_new_task_form.dart';


class AddNewTaskWidget extends StatelessWidget {
  const AddNewTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Dialog(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.cancel,size: 36,color: Color(0xff414141),)),
Spacer(flex: 1,),
                  Text(
                    'Add New Task',
                    style: AppStyles.styleBold32,
                  ),
                  Spacer(flex: 1,),
                ],
              ),
            ),
            AddNewTaskForm()

          ],
        ),
      ),
    );
  }
}
