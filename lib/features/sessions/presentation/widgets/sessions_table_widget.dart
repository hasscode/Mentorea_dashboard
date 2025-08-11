import 'dart:math';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';

class SessionsTableWidget extends StatelessWidget {
  final String? filterStatus;
  final String? filterDate;

  const SessionsTableWidget({super.key, this.filterStatus, this.filterDate});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        cardTheme: const CardThemeData(color: Colors.white),
      ),
      child: PaginatedDataTable2(
        fixedColumnsColor: Colors.white,
        autoRowsToHeight: true,
        headingRowDecoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(14),
            topLeft: Radius.circular(14),
          ),
          border: Border.all(color: const Color(0xffD5D5D5)),
        ),
        headingRowHeight: 49,
        dataRowHeight: 74,
        dividerThickness: 0.5,
        columnSpacing: 81,
        horizontalMargin: 20,

        columns: [
          DataColumn(label: Text("ID", style: AppStyles.styleExtraBold14)),
          DataColumn(label: Text("Mentor", style: AppStyles.styleExtraBold14)),
          DataColumn(label: Text("Mentee", style: AppStyles.styleExtraBold14)),
          DataColumn(label: Text("Date", style: AppStyles.styleExtraBold14)),
          DataColumn(label: Text("Status", style: AppStyles.styleExtraBold14)),
        ],
        source: MentorshipDataSource(
          filterStatus: filterStatus,
          filterDate: filterDate,
        ),
        rowsPerPage: 1,
        showFirstLastButtons: false,
      ),
    );
  }
}

class MentorshipDataSource extends DataTableSource {
  final String? filterStatus;
  final String? filterDate;

  MentorshipDataSource({this.filterStatus, this.filterDate});

  final List<Map<String, dynamic>> _allData = List.generate(
    50,
        (index) => {
      "id": "MNT-${1000 + index}",
      "mentor": getRandomName(),
      "mentee": getRandomName(),
      "date": getRandomDate(),
      "status": getRandomStatus(),
    },
  );

  late final List<Map<String, dynamic>> data = _allData.where((row) {
    final matchesStatus =
        (filterStatus == null || filterStatus == "") || row["status"] == filterStatus;
    final matchesDate =
        (filterDate == null || filterDate == "") || row["date"] == filterDate;
    return matchesStatus && matchesDate;
  }).toList();

  @override
  DataRow getRow(int index) {
    if (index >= data.length) return null!;

    final row = data[index];
    return DataRow(cells: [
      DataCell(Text(row["id"], style: AppStyles.styleSemiBold14)),
      DataCell(Text(row["mentor"], style: AppStyles.styleSemiBold14)),
      DataCell(Text(row["mentee"], style: AppStyles.styleSemiBold14)),
      DataCell(Text(row["date"], style: AppStyles.styleSemiBold14)),
      DataCell(
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: getStatusColor(row["status"]),
            borderRadius: BorderRadius.circular(4.5),
          ),
          child: Text(row["status"], style: AppStyles.styleBold12.copyWith(color: Color(0xffFCFDFD))),
        ),
      ),
    ]);
  }

  @override
  int get rowCount => data.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

List<String> names = [
  "Alice Johnson",
  "Bob Smith",
  "Charlie Brown",
  "Diana Prince",
  "Ethan Hunt",
  "Fiona Clarke",
  "George Lucas",
  "Hannah Adams",
  "Ian Wright",
  "Jackie Chan"
];

String getRandomName() {
  return names[Random().nextInt(names.length)];
}

String getRandomDate() {
  final now = DateTime.now();
  final randomDays = Random().nextInt(30);
  final randomDate = now.subtract(Duration(days: randomDays));
  return "${randomDate.day}-${randomDate.month}-${randomDate.year}";
}

List<String> statuses = ["Scheduled", "Completed", "Cancelled", "In Progress"];

String getRandomStatus() {
  return statuses[Random().nextInt(statuses.length)];
}

Color getStatusColor(String status) {
  switch (status) {
    case "Completed":
      return const Color(0xff00B69B);
    case "In Progress":
      return Colors.deepPurpleAccent;
    case "Cancelled":
      return  Colors.redAccent;
    default:
      return Colors.grey.shade500;
  }
}
