import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';
import 'package:mentorea_dashboard/core/widgets/custom_button.dart';
import 'package:mentorea_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:mentorea_dashboard/features/inbox/data/models/inbox_message_model.dart';

class MessageBodyWidget extends StatefulWidget {
  MessageBodyWidget({super.key, required this.inboxMessageModel});
  InboxMessageModel inboxMessageModel;
  @override
  State<MessageBodyWidget> createState() => _MessageBodyWidgetState();
}

class _MessageBodyWidgetState extends State<MessageBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close)),
                  Spacer(),
                  Text(
                    widget.inboxMessageModel.title,
                    style: AppStyles.styleBold20,
                  ),
                  Spacer(),
                  Text(
                    DateFormat.yMMMd()
                        .format(widget.inboxMessageModel.theTimeOfMessage)
                        .toString(),
                    style: AppStyles.styleSemiBold16,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    DateFormat.Hm()
                        .format(widget.inboxMessageModel.theTimeOfMessage)
                        .toString(),
                    style: AppStyles.styleSemiBold16,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'From : ${widget.inboxMessageModel.from}',
                        style: AppStyles.styleBold16,
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Role : ${widget.inboxMessageModel.role}\n',
                        style: AppStyles.styleBold16,
                      )),
                  Center(
                      child: Text(
                    widget.inboxMessageModel.content,
                    style: AppStyles.styleRegular14,
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    hintText: " write reply",
                    onChanged: (v) {},
                    obscureText: false,
                    title: "Reply",
                    maxLines: 4,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    color: Color(0xff2975B3),
                    text: "Send",
                    borderRadius: 10,
                    onTap: () {},
                    textStyle:
                        AppStyles.styleSemiBold16.copyWith(color: Colors.white),
                    height: 50,
                    width: 200,
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
