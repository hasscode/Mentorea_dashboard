import 'dart:math';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';
class PaymentTransactionsTable extends StatelessWidget {
  const PaymentTransactionsTable({super.key,this.filterDate,this.filterStatus});
  final String? filterStatus;
  final String? filterDate;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        cardTheme: const CardTheme(color: Colors.white),
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
        headingRowColor:
        MaterialStateColor.resolveWith((states) => const Color(0xFFFCFDFD)),
        columns: [
          DataColumn(label: Text("ID", style: AppStyles.styleExtraBold14)),
          DataColumn(label: Text("From", style: AppStyles.styleExtraBold14)),
          DataColumn(label: Text("To", style: AppStyles.styleExtraBold14)),
          DataColumn(label: Text("Date", style: AppStyles.styleExtraBold14)),
          DataColumn(label: Text("Status", style: AppStyles.styleExtraBold14)),
          DataColumn(label: Text("Amount", style: AppStyles.styleExtraBold14)),
          // DataColumn(label: Text("Amount", style: AppStyles.styleExtraBold14)),
        ],
        source: PaymentTransactionsDataSource(
          filterStatus: filterStatus,
          filterDate: filterDate,
        ),
        rowsPerPage: 6,
        showFirstLastButtons: false,
      ),
    );
  }
}

class PaymentTransactionsDataSource extends DataTableSource {
  final String? filterStatus;
  final String? filterDate;

  PaymentTransactionsDataSource({this.filterStatus, this.filterDate});

  final List<Map<String, dynamic>> _allData = List.generate(
    50,
        (index) => {
      "id": "TRX-${1000 + index}",
      "from": getRandomName(),
      "to": getRandomName(),
      "date": getRandomDate(),
      "status": getRandomPaymentStatus(),
      "amount": getRandomAmount(),
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
      DataCell(FittedBox(child: Text(row["id"], style: AppStyles.styleSemiBold14))),
      DataCell(FittedBox(child: Text(row["from"], style: AppStyles.styleSemiBold14))),
      DataCell(FittedBox(child: Text(row["to"], style: AppStyles.styleSemiBold14))),
      DataCell(FittedBox(child: Text(row["date"], style: AppStyles.styleSemiBold14))),
      DataCell(
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: getPaymentStatusColor(row["status"]),
            borderRadius: BorderRadius.circular(4.5),
          ),
          child: FittedBox(
            child: Text(row["status"],
                style: AppStyles.styleBold12.copyWith(color: Color(0xffFCFDFD))),
          ),
        ),
      ),
      DataCell(FittedBox(child: Text("\$${row["amount"].toStringAsFixed(2)}", style: AppStyles.styleSemiBold14))),
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
String getRandomPaymentStatus() {
  final statuses = ["Pending", "Completed", "Cancelled"];
  return statuses[Random().nextInt(statuses.length)];
}

double getRandomAmount() {
  return (Random().nextDouble() * 1000 + 20); // From $20 to $1020
}

Color getPaymentStatusColor(String status) {
  switch (status) {
    case "Completed":
      return Color(0xff00B69B);
    case "Pending":
      return Colors.orange;
    case "Cancelled":
      return Colors.redAccent;
    default:
      return Colors.grey.shade400;
  }
}