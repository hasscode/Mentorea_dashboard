import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';

import '../../data/models/todo_task_model.dart';

class TaskBodyWidget extends StatelessWidget {
   TaskBodyWidget({super.key,required this.toDoTaskModel});
ToDoTaskModel toDoTaskModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.cancel,size: 36,color: Color(0xff414141),)),
            Text(toDoTaskModel.title,style: AppStyles.styleBold24,),
            toDoTaskModel.isDone ? Icon(Icons.check_box_rounded ,color: Colors.green,):SizedBox.shrink(),
            Spacer(),
            Text(DateFormat.yMMMd().format(toDoTaskModel.theTimeOfTask).toString(),style: AppStyles.styleSemiBold16,),
            SizedBox(width: 10,),
            Text(DateFormat.Hm().format(toDoTaskModel.theTimeOfTask).toString(),style: AppStyles.styleSemiBold16,)
          ],
        ),

      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 40),
        child: Text(toDoTaskModel.content,style: AppStyles.styleSemiBold18,maxLines: 10,textAlign: TextAlign.justify,),
      )
        ],

      ),
    );
  }
}
