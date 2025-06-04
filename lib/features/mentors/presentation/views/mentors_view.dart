import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/widgets/view_header_widget.dart';
import '../../../../../core/theme/app_images.dart';
import '../../../team/data/models/team_member_model.dart';
import '../../../team/presentation/widgets/team_member_card_widget.dart';
import '../../data/models/mentor_card_model.dart';
import '../widgets/mentor_card_widget.dart';
import '../widgets/mentors_filter_widget.dart';
import '../widgets/mentors_header_widget.dart';

class MentorsView extends StatefulWidget {
  MentorsView({super.key});

  @override
  State<MentorsView> createState() => _MentorsViewState();
}

class _MentorsViewState extends State<MentorsView> {
  TextEditingController searchController = TextEditingController();
  String? selectedCategory; // Track selected category

  List<MentorCardModel> allMentors = [
    MentorCardModel(
        img: Assets.imagesPersonMentor,
        name: 'Danial Harrison',
        title: 'Senior Back-End Developer at Google',
        experience: 5,
        price: 50.0,
        numOfSessions: 10,
        rate: '4.6'),
    MentorCardModel(
        img: Assets.imagesPerson,
        name: 'Harrison Dave',
        title: 'Senior Front-End Developer at InstaBug',
        experience: 2,
        price: 20.0,
        numOfSessions: 10,
        rate: '4.3'),
    MentorCardModel(
        img: Assets.imagesPersonMentor2,
        name: 'Mamadou Florian',
        title: 'Flutter Developer at LinkDev',
        experience: 2,
        price: 30.0,
        numOfSessions: 20,
        rate: '4.5'),
  ];
  List<MentorCardModel> filteredMentors = [];

  @override
  void initState() {
    super.initState();
    filteredMentors = List.from(allMentors);
    searchController.addListener(filterMentors);
  }

  void filterMentors() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredMentors = allMentors.where((mentor) {
        bool matchesSearch = mentor.name.toLowerCase().contains(query) ||
            mentor.title.toLowerCase().contains(query);
        bool matchesCategory = selectedCategory == null ||
            mentor.title.toLowerCase().contains(selectedCategory!.toLowerCase());
        return matchesSearch && matchesCategory;
      }).toList();
    });
  }

  // Callback to handle category selection
  void onCategorySelected(String? category) {
    setState(() {
      selectedCategory = category;
      filterMentors();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: MentorsHeaderWidget(searchController: searchController),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0, left: 30),
          child: MentorsFilterWidget(
            onCategorySelected: onCategorySelected, // Pass callback
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 20.0,
            ),
            itemCount: filteredMentors.length,
            itemBuilder: (context, i) =>
                MentorCardWidget(mentorCardModel: filteredMentors[i]),
          ),
        ),
      ],
    );
  }
}