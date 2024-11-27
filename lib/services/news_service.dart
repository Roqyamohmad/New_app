import 'package:dio/dio.dart';
import 'package:flutterapp1/Models/articls_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticlsModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=682a9809dddb446da6e4f8ae8cf45594&country=us&category=$category");
      var jsonData = response.data;
      List<dynamic> articls = jsonData['articles'];
      List<ArticlsModel> articlsList = [];
      for (var articl in articls) {
        ArticlsModel articlsModel = ArticlsModel.fromJson(articl);
        articlsList.add(articlsModel);
      }
      return articlsList;
    } catch (e) {
      return [];
    }
  }
}
