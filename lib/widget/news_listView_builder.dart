import 'package:flutter/material.dart';
import 'package:flutterapp1/Models/articls_model.dart';
import 'package:flutterapp1/widget/newsListView.dart';
import 'package:dio/dio.dart';
import 'package:flutterapp1/services/news_service.dart';

class NewsListviewBuilder extends StatefulWidget {
  const NewsListviewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return FutureBuilder<List<ArticlsModel>>(
        future: future,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return NewsListView(articls: Snapshot.data!);
          } else if (Snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text("Opps there was errpr,Please try again"),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
