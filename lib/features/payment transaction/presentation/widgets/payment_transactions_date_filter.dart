import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/features/payment%20transaction/presentation/widgets/payment_transactions_filter_widget.dart';



class PaymentTransactionsDateFilter extends StatelessWidget {
  const PaymentTransactionsDateFilter({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Transform.rotate(
        angle: 90 * math.pi / 180,
        child: IconButton(
          icon: Icon(Icons.arrow_forward_ios_sharp,),
          onPressed: null,
        ),
      ),
      onTap: ()async{
        DateTime? newDate = await showDatePicker(
            context: context,
            firstDate: DateTime(2025),
            lastDate: DateTime(2100));
        if (newDate == null) return;
        paymentFilterDateTime =  newDate ;
      },
    );
  }
}
