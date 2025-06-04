import 'package:flutter/cupertino.dart';

double getResponsiveText({required double fontsize,required BuildContext context}){
  double scaleFactor = getScaleFactor(context);
  double responsiveText = scaleFactor * fontsize;
  responsiveText.clamp(fontsize * .8, fontsize *1.2);
  return responsiveText;
}

double getScaleFactor(BuildContext context) {
  double w = MediaQuery.sizeOf(context).width;
  if(w<600){
    return w/400 ;
  } else if(w<900){

    return  w/700;
  } else {
    return w/1000;
  }


}