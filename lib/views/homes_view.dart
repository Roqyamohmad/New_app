import 'package:flutter/material.dart';
import 'package:flutterapp1/widget/category-ListView_builder.dart';
import 'package:flutterapp1/widget/news_listView_builder.dart';

class HomesView extends StatelessWidget {
  const HomesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Cloud",
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        ),
        body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CategoriesListview(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                NewsListviewBuilder(
                  category: 'general',
                ),
              ],
            )));
  }
}
