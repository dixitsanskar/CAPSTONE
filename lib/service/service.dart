import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:mini_project/model/problemModel.dart';
import 'package:mini_project/model/user.dart';
import 'package:mini_project/service/statusrequest.dart';
import 'package:mini_project/util/constants.dart';

import '../model/room.dart';

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
  ) async {
    var headers = {'Content-Type': 'application/json'};
    var data = json.encode({
      "name": name,
      "username": username,
      "email": email,
      "password": password,
      "gitlink": gitlink,
      "linlink": linlink,
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

   static Future<Map<String, dynamic>?> createRoom({
    required String roomName,
    required List<TeamDetails> teamMembers,
    required String problemId,
    required String roomToken,
    required String videoConference,
  }) async {
    var headers = {'Content-Type': 'application/json'};
    var data = json.encode({
      "room_name": roomName,
      "team_members": teamMembers.map((member) => member.toJson()).toList(),
      "problem_id": problemId,
      "room_token": roomToken,
      "videocon": videoConference,
    });

    var dio = Dio();

    try {
      var response = await dio.post(
        '$baseUrl/create-room',
        options: Options(
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        return response.data;
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



