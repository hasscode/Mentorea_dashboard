import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_images.dart';
import '../../data/models/category_filter_model.dart';
import 'category_item_widget.dart';

class MentorsFilterWidget extends StatefulWidget {
  final Function(String?) onCategorySelected; // Callback for category selection

  MentorsFilterWidget({super.key, required this.onCategorySelected});

  @override
  State<MentorsFilterWidget> createState() => _MentorsFilterWidgetState();
}

class _MentorsFilterWidgetState extends State<MentorsFilterWidget> {
  late int selectedIndex = -1;

  List<CategoryFilterModel> categories = [
    CategoryFilterModel(icon: Assets.iconFlutter, category: 'Flutter'),
    CategoryFilterModel(icon: Assets.iconBackend, category: 'Back-end'),
    CategoryFilterModel(icon: Assets.iconDataEng, category: 'Data Engineering'),
    CategoryFilterModel(icon: Assets.iconML, category: 'Machine Learning'),
    CategoryFilterModel(icon: Assets.iconLanguages, category: 'Languages'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (selectedIndex != i) {
                  selectedIndex = i;
                  widget.onCategorySelected(categories[i].category);
                } else {
                  selectedIndex = -1;
                  widget.onCategorySelected(null); // Deselect category
                }
              });
            },
            child: CategoryItemWidget(
              categoryFilterModel: categories[i],
              isSelected: selectedIndex == i,
            ),
          ),
        ),
      ),
    );
  }
}