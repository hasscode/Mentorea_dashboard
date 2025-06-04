import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/features/todo/presentation/widgets/remove_task_alert_widget.dart';
import 'package:mentorea_dashboard/features/todo/presentation/widgets/task_body_widget.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../data/models/todo_task_model.dart';

class ToDoListItemWidget extends StatefulWidget {
  ToDoListItemWidget({super.key, required this.toDoTaskModel});
  ToDoTaskModel toDoTaskModel;
  @override
  State<ToDoListItemWidget> createState() => _ToDoListItemWidgetState();
}

class _ToDoListItemWidgetState extends State<ToDoListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) =>
                TaskBodyWidget(toDoTaskModel: widget.toDoTaskModel));
      },
      child: Container(
        height: 93,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffD5D5D5)),
            borderRadius: BorderRadius.circular(12),
            color:
                widget.toDoTaskModel.isDone ? Color(0xff2975B3) : Colors.white),
        child: Center(
          child: ListTile(
            leading: Checkbox(
              value: widget.toDoTaskModel.isDone,
              onChanged: (bool? newValue) {
                setState(() {
                  widget.toDoTaskModel.isDone = newValue!;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              activeColor: Colors.green,
              checkColor: Colors.white,
            ),
            title: Text(
              widget.toDoTaskModel.title,
              style: AppStyles.styleSemiBold18.copyWith(
                  color: widget.toDoTaskModel.isDone ? Colors.white : null),
            ),
            trailing: widget.toDoTaskModel.isDone
                ? Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => RemoveTaskAlertWidget(toDoTaskModel: widget.toDoTaskModel,));
                        },
                        icon: Icon(
                          Icons.delete_outline_sharp,
                          color: Colors.white,
                          size: 26,
                        )))
                : IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => RemoveTaskAlertWidget(toDoTaskModel: widget.toDoTaskModel,));
                    },
                    icon: Icon(
                      Icons.highlight_remove,
                      color: Color(0xff888888),
                      size: 26,
                    )),
          ),
        ),
      ),
    );
  }
}
