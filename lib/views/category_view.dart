import 'package:flutter/material.dart';
import 'package:flutterapp1/widget/news_listView_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categories});
  final String categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListviewBuilder(
            category: categories,
          ),
        ],
      ),
    );
  }
}
