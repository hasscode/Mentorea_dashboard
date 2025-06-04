import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../data/models/todo_task_model.dart';
import '../views/to_do_view.dart';
class AddNewTaskForm extends StatefulWidget {
  const AddNewTaskForm({super.key});

  @override
  State<AddNewTaskForm> createState() => _AddNewTaskFormState();
}

class _AddNewTaskFormState extends State<AddNewTaskForm> {
  GlobalKey<FormState> formKey=GlobalKey();
 late String title;
  late String content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: CustomTextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }},
                hintText: "Enter the title of the task",
                onChanged: (v) {
                  title =v!;
                },
                obscureText: false,
                title: "Title"),
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: CustomTextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }},
              maxLines: 10,
                hintText: "Enter the content of the task",
                onChanged: (v) {
                content =v!;
                },
                obscureText: false,
                title: "content"),
          ),
          CustomButton(
              color: Color(0xff2975B3),
              height: 56,
              width: 274,
              text: "Add Task",
              borderRadius: 12,
              onTap: () {
    if (formKey.currentState!.validate()) {
      setState(() {
        tasks.add(ToDoTaskModel(title: title, content: content, isDone: false,theTimeOfTask: DateTime.now()));
        Navigator.pop(context);
      });
    }
              },
              textStyle: AppStyles.styleBold14.copyWith(color: Colors.white)),
          SizedBox(height: 50)
        ],
      ),
    );
  }
}
