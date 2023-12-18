
import 'package:dio/dio.dart';
import 'package:mini_project/model/problemModel.dart';

class SearchServices{

  static Future<List<Results>> searchProblemStatement(int pageIndex, String searchVal) async
  {
    var url = 'https://127.0.0.1:5000/search';
    var response = await Dio().get(url, queryParameters: {
      'page': pageIndex,
      'input_text': searchVal
    });

    if(response.statusCode == 200)
    {
      var result = ProblemStatement.fromJson(response.data);
      return result.results!;
    }
    else
    {
      return [];
    }

  }
}