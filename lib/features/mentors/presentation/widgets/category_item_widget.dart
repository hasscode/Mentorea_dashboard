import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



import '../../../../../core/theme/app_text_styles.dart';
import '../../data/models/category_filter_model.dart';
class CategoryItemWidget extends StatefulWidget {
   CategoryItemWidget({super.key,required this.categoryFilterModel,required this.isSelected});
CategoryFilterModel categoryFilterModel;
bool isSelected;

  @override
  State<CategoryItemWidget> createState() => _CategoryItemWidgetState();
}

class _CategoryItemWidgetState extends State<CategoryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: widget.isSelected?Color(0xff2975B3) :Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xff2975B3))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
SvgPicture.asset(widget.categoryFilterModel.icon,width: 25,color: widget.isSelected?Colors.white:null,),
SizedBox(width: 5,),
            Text(widget.categoryFilterModel.category,style: AppStyles.styleSemiBold12.copyWith(color: widget.isSelected?Colors.white:null),),
          ],
        ),
      ),
    );
  }
}
