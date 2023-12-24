import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:mini_project/model/problemModel.dart';
import 'package:mini_project/service/statusrequest.dart';

class SearchServices {
  static Future<List<Results>> searchProblemStatement(
      int pageIndex, String searchVal) async {
    var headers = {'Content-Type': 'application/json',
    };
    var data = json.encode({
      "input_text": searchVal ,
      "page": pageIndex ,
    });

    var dio = Dio();

    try {
      var response = await dio.post(
        'https://capstone-api-ci93.onrender.com/search',
        options: Options(
          headers: headers,
        ),
        data: data,
      );
      print(response.data);

      if (response.statusCode == 200) {
        var result = ProblemStatement.fromJson(response.data);
        if (result.results != null) {
          return result.results!;
        } else {
          // Handle the case where results are null
          return [];
        }
      } else {
        // Handle non-200 status code
        print('Error: ${response.statusCode}, ${response.statusMessage}');
        return [];
      }
    } catch (e) {
      // Handle Dio errors or other exceptions
      print('Error: $e');
      return [];
    }
  }
}
