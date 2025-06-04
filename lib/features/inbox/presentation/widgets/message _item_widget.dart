import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';
import 'package:mentorea_dashboard/features/inbox/data/models/inbox_message_model.dart';
import 'package:mentorea_dashboard/features/inbox/presentation/widgets/message_body_widget.dart';
class MessageItemWidget extends StatelessWidget {
   MessageItemWidget({super.key,required this.inboxMessageModel});
InboxMessageModel inboxMessageModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap: (){
  showDialog(context: context, builder: (context)=>MessageBodyWidget(inboxMessageModel: inboxMessageModel,));
},
      child: Container(

        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:15),
          child: Row(
            children: [
          SizedBox(width: 10,),
              Text(inboxMessageModel.from,style: AppStyles.styleSemiBold16,),
              Text("(${inboxMessageModel.role})",style: AppStyles.styleBold16,),
              Spacer(),
              Flexible(child: Text(inboxMessageModel.content,style: AppStyles.styleRegular14,overflow: TextOverflow.ellipsis)),
              Spacer(),
              Align(alignment: Alignment.topRight, child: Text((DateFormat.yMMMd().format(inboxMessageModel.theTimeOfMessage)).toString(),style: AppStyles.styleBold16,)),
              SizedBox(width: 10,),

              SizedBox(width: 10,),

            ],
          ),
        )
      ),
    );
  }
}
