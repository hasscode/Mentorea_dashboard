import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';
import 'package:mentorea_dashboard/features/inbox/data/models/inbox_message_model.dart';
import 'package:mentorea_dashboard/features/inbox/presentation/widgets/inbox_header_widget.dart';
import 'package:mentorea_dashboard/features/inbox/presentation/widgets/message%20_item_widget.dart';

class InboxView extends StatefulWidget {
  InboxView({super.key});
  List<InboxMessageModel> msgs = [
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
            "Communication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication Issue",
        from: "Hassan Hany Hassan",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
            "Communication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication Issue",
        from: "Hassan Hany Hassan",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
            "Communication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication Issue",
        from: "Hassan Hany Hassan",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
            "Communication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication Issue",
        from: "Hassan Hany Hassan",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
            "Communication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication Issue",
        from: "Hassan Hany Hassan",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
            "Communication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication Issue",
        from: "Hassan Hany Hassan",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Bad Use",
        role: "Mentee",
        content:
        "Communication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication IssueCommunication Issue Communication Issue Communication Issue Communication Issue vCommunication IssueCommunication IssueCommunication Issue",
        from: "Ali Ahmed Sami",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
    InboxMessageModel(
        title: "Communication Issue",
        role: "Mentor",
        content:
        "asdasdaafghghjhgjhjghjgggggggggggggggggggggggggggggggggggggggggghkjlklkjl yuhkijukhjhjk hjkhj khjk  jhkhjkhjkhjk hjkhj kkjhjkhjkhjkjkh hjk",
        from: "Ahmed Hany Ali",
        theTimeOfMessage: DateTime.now()),
  ];
  @override
  State<InboxView> createState() => _InboxViewState();
}

class _InboxViewState extends State<InboxView> {
  late TextEditingController searchController;
  List<InboxMessageModel> filteredMsgs = [];

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    filteredMsgs = widget.msgs;

    searchController.addListener(() {
      final query = searchController.text.toLowerCase();
      setState(() {
        filteredMsgs = widget.msgs.where((msg) {
          return msg.from.toLowerCase().contains(query) ||
              msg.role.toLowerCase().contains(query);
        }).toList();
      });
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: InboxHeaderWidget(searchController: searchController) ,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
    ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:  10.0),
                child: ListView.builder(
                  itemCount: filteredMsgs.length,
                  itemBuilder: (context, i) => MessageItemWidget(
                    inboxMessageModel: filteredMsgs[i],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
