import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';

import '../../data/models/todo_task_model.dart';
import '../widgets/to_do_header_widget.dart';
import '../widgets/to_do_list_item_widget.dart';


class ToDoView extends StatelessWidget {
  ToDoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: ToDoHeaderWidget(),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, i) => Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, bottom: 25),
                    child: ToDoListItemWidget(
                      toDoTaskModel: tasks[i],
                    ),
                  )),
        )
      ],
    );
  }
}

List<ToDoTaskModel> tasks = [
  ToDoTaskModel(
      title: 'Review with HR',
      content:
          'Review with HR at 9:00 Am,About designs and app security,Review with HR at 9:00 Am,About designs and app security,Review with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app securityReview with HR at 9:00 Am,About designs and app security',
      isDone: false,theTimeOfTask:  DateTime.now()),
  ToDoTaskModel(title: 'Meeting with CEO', content: '', isDone: false,theTimeOfTask: DateTime.now(),),
];
