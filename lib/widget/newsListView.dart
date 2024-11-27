import 'package:flutter/material.dart';
import 'package:flutterapp1/Models/articls_model.dart';
import 'package:flutterapp1/widget/news-tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticlsModel> articls;
  const NewsListView({
    super.key,
    required this.articls,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articls.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: NewsTile(articlsModel: articls[index]),
      );
    }));
  }
}
