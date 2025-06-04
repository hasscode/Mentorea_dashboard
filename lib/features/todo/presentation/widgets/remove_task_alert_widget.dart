import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../data/models/todo_task_model.dart';
import '../views/to_do_view.dart';
class RemoveTaskAlertWidget extends StatefulWidget {
  RemoveTaskAlertWidget({super.key,required this.toDoTaskModel});
ToDoTaskModel toDoTaskModel;
  @override
  State<RemoveTaskAlertWidget> createState() => _RemoveTaskAlertWidgetState();
}

class _RemoveTaskAlertWidgetState extends State<RemoveTaskAlertWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Warning',
        style: AppStyles.styleBold24,
      ),
      content: Text(
          'Are you sure to delete this task from the list?'),
      actions: [
        TextButton(
            onPressed: () {
              setState(() {
                tasks.removeWhere((task) =>
                task.title ==
                    widget.toDoTaskModel
                        .title &&
                    task.content ==
                        widget.toDoTaskModel
                            .content &&
                    task.isDone ==
                        widget.toDoTaskModel
                            .isDone);
              Navigator.pop(context);
              });
            },
            child: Text(
              'Delete',
              style: AppStyles.styleSemiBold16,
            )),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: AppStyles.styleSemiBold16,
            )),
      ],
    );
  }
}
