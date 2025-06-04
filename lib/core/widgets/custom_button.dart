import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    this.height,
    this.width,
    this.icon,
    required this.text,
    required this.borderRadius,
    required this.onTap,
    required this.textStyle,
    this.iconColor
  });

  final VoidCallback onTap;
  final TextStyle textStyle;
  final double? height;
  final double? width;
  final Color color;
  final double borderRadius;
  final String? icon;
  final String text;
final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon==null?SizedBox.shrink(): Row(children:[SvgPicture.asset(icon!,color: iconColor,width: 25,),SizedBox(width: 15,)]),
              Text(
                text,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
