class InboxMessageModel{
  String from;
  String title;
  String role;
  String content;
  DateTime theTimeOfMessage;
  InboxMessageModel({required this.title,required this.role,required this.content,required this.from,required this.theTimeOfMessage});

}