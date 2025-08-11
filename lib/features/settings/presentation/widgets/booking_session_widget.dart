import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/features/settings/presentation/widgets/session_details_bottom_sheet.dart';

import '../../../../core/theme/app_images.dart';
import '../../../../core/theme/app_text_styles.dart';
class BookingSessionWidget extends StatelessWidget {
  const BookingSessionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,

      decoration: BoxDecoration(
        border: Border.symmetric(horizontal: BorderSide(color: Color(0xffBFBFBF))),

      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(Assets.imagesPersonMentor),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hassan Hany',style: AppStyles.styleSemiBold16,),
                Text('Back-end Developer',style: AppStyles.styleRegular14),
              ],),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
                ,  color: Color(0xff44C76A),
              ),
              child: Center(child: Text("Confirmed",style: AppStyles.styleBold10.copyWith(color: Colors.white),)),

            ),

            GestureDetector(
              onTap: (){

                showBottomSheet(context: context, builder: (context)=> SessionDetailsBottomSheet());
              },
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                  ,  color: Color(0xff0A2045),
                ),
                child: Center(child: Text("Details",style: AppStyles.styleBold12.copyWith(color: Colors.white),)),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
