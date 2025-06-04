import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';

import '../widgets/payment_transactions_filter_widget.dart';
import '../widgets/payment_transactions_table.dart';
class PaymentTransactionsView extends StatelessWidget {
  const PaymentTransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: CustomViewHeaderWidget(title: 'Payment Transactions'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: PaymentTransactionsFilterWidget(),
        ),
        SizedBox(height: 24,),
        Padding(
          padding: const EdgeInsets.only(left: 25,right:25,bottom: 30),
          child: SizedBox(height: 530, child: PaymentTransactionsTable(filterStatus: paymentFilterStatusValue=='All'? null :paymentFilterStatusValue,filterDate:paymentFilterDateTime==null?null:"${paymentFilterDateTime?.day}-${paymentFilterDateTime?.month}-${paymentFilterDateTime?.year}")),
        )
      ],
    );
  }
}
