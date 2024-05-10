import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:mini_project/model/problemModel.dart';
import 'package:mini_project/model/user.dart';
import 'package:mini_project/service/statusrequest.dart';
import 'package:mini_project/util/constants.dart';

class SearchServices {
  static Future<List<Results>> searchProblemStatement(
      int pageIndex, String searchVal) async {
    var headers = {'Content-Type': 'application/json',
    };
    var data = json.encode({
      "username": searchVal ,
      "password": pageIndex ,
    });

    var dio = Dio();

    try {
      var response = await dio.post(
        '$baseUrl/search',
        options: Options(
          headers: headers,
        ),
        data: data,
      );
      // print(response.data);

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
  static Future<user? > userLogin(
      String name, String password) async {
    var headers = {'Content-Type': 'application/json',
    };
    var data = json.encode({
      "username": name ,
      "password": password ,
    });

    var dio = Dio();

    try {
      var response = await dio.post(
        '$baseUrl/login',
        options: Options(
          headers: headers,
        ),
        data: data,
      );
      // print(response.data);

      if (response.statusCode == 200) {
        var result = UserData.fromJson(response.data);
        if (result.status != null) {
          return result.info!;
        } else {
          // Handle the case where results are null
        }
      } else {
        // Handle non-200 status code
        print('Error: ${response.statusCode}, ${response.statusMessage}');
      }
    } catch (e) {
      // Handle Dio errors or other exceptions
      print('Error: $e');

    }
  }

  static Future<user?> userRegister(
    String name,
    String username,
    String email,
    String password,
    String gitlink,
    String linlink,
    List<Project> projects,
  ) async {
    var headers = {'Content-Type': 'application/json'};
    var data = json.encode({
      "name": name,
      "username": username,
      "email": email,
      "password": password,
      "gitlink": gitlink,
      "linlink": linlink,
      "projects": projects.map((project) => project.toJson()).toList(),
    });

    var dio = Dio();

    try {
      var response = await dio.post(
        '$baseUrl/register',
        options: Options(
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        var result = user.fromJson(response.data);
        return result;
      } else {
        print('Error: ${response.statusCode}, ${response.statusMessage}');
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}



