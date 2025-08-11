import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_text_styles.dart';
class SessionDetailsBottomSheet extends StatelessWidget {
  const SessionDetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(18),topLeft:Radius.circular(18) ),
        color: Colors.white,
      ),

      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height*.5,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Session Details',style: AppStyles.styleBold24,),
                Spacer(),
                IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.redAccent,)),
              ],
            ),
            Align(alignment: Alignment.topLeft, child: Text("Date : ${DateFormat.yMMMd().format(DateTime.now())}".toString(),style: AppStyles.styleSemiBold16,)),
            Align(alignment: Alignment.topLeft, child: Text("Time : ${DateFormat.Hm().format(DateTime.now()).toString()}",style: AppStyles.styleSemiBold16,)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                    ,  color: Color(0xff0A2045),
                  ),
                  child: Center(child: Text("Start",style: AppStyles.styleBold14.copyWith(color: Colors.white),)),

                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                    ,  color: Color(0xffCB2C02),
                  ),
                  child: Center(child: Text("Cancel Request",style: AppStyles.styleBold14.copyWith(color: Colors.white),)),

                )

              ],)

          ],),
      ),
    );
  }
}
