import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_dashboard/features/payment%20transaction/presentation/widgets/payment_transactions_date_filter.dart';
import 'package:mentorea_dashboard/features/payment%20transaction/presentation/widgets/payment_transactions_reset_filter.dart.dart';


import '../../../../../core/theme/app_images.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/custom_drop_down_menu_button.dart';
class PaymentTransactionsFilterWidget extends StatefulWidget {
  const PaymentTransactionsFilterWidget({super.key});


  @override
  State<PaymentTransactionsFilterWidget> createState() => _PaymentTransactionsFilterWidgetState();
}

class _PaymentTransactionsFilterWidgetState extends State<PaymentTransactionsFilterWidget> {
  static const  List<String>statuses=['All','Pending','Completed','Cancelled'];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffD5D5D5)),
          color: Colors.white
      ),
      child: IntrinsicHeight(
        child: Row(

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 24),
              child: SvgPicture.asset(Assets.iconFilter),
            ),
            VerticalDivider(color: Color(0xffB6B6B6),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
              child: Text('Filter By',style: AppStyles.styleBold14,),
            ),
            VerticalDivider(color: Color(0xffB6B6B6),),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical:10),
              child: CustomDropDownMenuButton(initialValue: paymentFilterStatusValue, items: statuses, hintText: 'Filter by statuses',onChanged: (v){ setState(() {
   paymentFilterStatusValue =v;
 });
},),
            )),
            VerticalDivider(color: Color(0xffB6B6B6),),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
                child: ListTile(

                  title: Text(paymentFilterDateTime==null?"Select specific date":DateFormat.yMMMd().format(paymentFilterDateTime!).toString(),style: AppStyles.styleBold14,),
                  trailing: PaymentTransactionsDateFilter(),
                ),
              ),
            ),
            VerticalDivider(color: Color(0xffB6B6B6),),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
                child: PaymentTransactionsResetFilter(),
              ),
            )


          ],
        ),
      ),
    );
  }
}



String? paymentFilterStatusValue   ;
DateTime? paymentFilterDateTime;