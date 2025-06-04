import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../data/models/dashboard_card_model.dart';

class DashboardCardWidget extends StatelessWidget {
  DashboardCardWidget({super.key, required this.dashboardCardModel});
  DashboardCardModel dashboardCardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 262 / 161,
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(children: [
                    SizedBox(
                        height: 22,
                        width: 82,
                        child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              dashboardCardModel.title,
                              style: AppStyles.styleSemiBold16
                                  .copyWith(color: Color(0xff636466)),
                            ))),
                    Spacer(),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: FittedBox(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            dashboardCardModel.icon,
                            width: 50,
                          )),
                    )
                  ]),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                          height: 38,
                          width: 96,
                          child: FittedBox(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                dashboardCardModel.subtitle.toString(),
                                style: AppStyles.styleBold28,
                              )))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
