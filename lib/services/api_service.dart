import 'dart:convert';
import 'package:http/http.dart';
import 'package:subspace_app/models/artical_model.dart';

class ApiService {
  final endpointurl =
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=271006b47c0d42fdb944d35c50ad8a6e";

  Future<List<Article>> getArticles() async {
    Response res = await get(Uri.parse(endpointurl));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw Exception("Can't get the Articles and Blogs");
    }
  }
}