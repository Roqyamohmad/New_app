import 'package:flutter/material.dart';
import 'package:flutterapp1/Models/category_Model.dart';
import 'package:flutterapp1/widget/category_card.dart';

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQYYQuIysHTdh0rCp8iShwzulOYA6lnnLYPA&s",
        categoryName: "business"),
    CategoryModel(
        image:
            "https://www.fbk.eu/wp-content/uploads/2020/12/Cover-Digital-Health-and-Wellbeing.jpg",
        categoryName: "health"),
    CategoryModel(
        image:
            "https://study.com/cimages/videopreview/what-is-economy-definition-types-quiz_113903.jpg",
        categoryName: "entertainment"),
    CategoryModel(
        image:
            "https://cdn3.parksmedia.wdprapps.disney.com/media/espnwwos/home/WWoS_Hero_768x438_Multi.jpg",
        categoryName: "sports"),
    CategoryModel(
        image:
            "https://www.renaissance.com.au/wp-content/uploads/2021/04/Science.jpg",
        categoryName: "science"),
    CategoryModel(
        image:
            "https://www.simplilearn.com/ice9/free_resources_article_thumb/What_is_the_Importance_of_Technology.jpg",
        categoryName: "technology"),
    CategoryModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQYYQuIysHTdh0rCp8iShwzulOYA6lnnLYPA&s",
        categoryName: "busniss"),
    CategoryModel(
        image:
            "https://www.fbk.eu/wp-content/uploads/2020/12/Cover-Digital-Health-and-Wellbeing.jpg",
        categoryName: "health"),
    CategoryModel(
        image:
            "https://study.com/cimages/videopreview/what-is-economy-definition-types-quiz_113903.jpg",
        categoryName: "economy"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}
