import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorea_dashboard/features/payment%20transaction/presentation/widgets/payment_transactions_filter_widget.dart';



import '../../../../../core/theme/app_images.dart';
import '../../../../../core/theme/app_text_styles.dart';
class PaymentTransactionsResetFilter extends StatefulWidget {
  const PaymentTransactionsResetFilter({super.key});

  @override
  State<PaymentTransactionsResetFilter> createState() => _PaymentTransactionsResetFilterState();
}

class _PaymentTransactionsResetFilterState extends State<PaymentTransactionsResetFilter> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          paymentFilterDateTime =null;
          paymentFilterStatusValue ='All';
        });
      },
      child: ListTile(
        title:Text('Reset Filter',style: AppStyles.styleSemiBold14.copyWith(color: Color(0xffEA0234)),) ,
        leading: SvgPicture.asset(Assets.iconReset),
      ),
    );
  }
}
