import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_dashboard/core/theme/app_images.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';

import '../../data/models/mentor_card_model.dart';

class MentorCardWidget extends StatelessWidget {
  MentorCardWidget({super.key,required this.mentorCardModel});
MentorCardModel mentorCardModel;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
width: 350,

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all( 10),
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 300,
                      height: 250,
                  decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6)
                    ),
                  child: Image.asset(mentorCardModel.img,fit: BoxFit.cover,),
                  ),
              ),
              ListTile(
                title: Text(mentorCardModel.name,style: AppStyles.styleBold18,),
                subtitle: Text(mentorCardModel.title,style: AppStyles.styleSemiBold15.copyWith(color: Color(0xff797A7C)),),
              ),
              ListTile(
                leading: SvgPicture.asset(Assets.iconExperience,width: 30,),
                title: Text('Experience',style: AppStyles.styleBold14,),
                subtitle: Text('${mentorCardModel.experience} years',style: AppStyles.styleSemiBold12.copyWith(color: Color(0xff414141)),),
                trailing: Text('${mentorCardModel.price} EGP',style: AppStyles.styleSemiBold15,),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 18,bottom: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.iconTotalSessions,width: 30,),
                    Spacer(flex: 1,),
                    Text('${mentorCardModel.numOfSessions} Sessions',style: AppStyles.styleSemiBold14,),
                    Spacer(flex: 12,),
                    Text(mentorCardModel.rate,style: AppStyles.styleBold16,),
                    Spacer(flex: 1,),
                    Icon(Icons.star,color: Color(0xffFFD56D),),
                  ],
                ),
              )


            ],),
        ),
      ),
    );
  }
}
