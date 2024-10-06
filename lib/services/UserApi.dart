import 'dart:convert';
import 'package:apikeyyoutubevideo/models/Sections.dart';
import 'package:apikeyyoutubevideo/models/User.dart';
import 'package:http/http.dart' as http;

class UserApi {
  static const String authToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiMTUxNCIsImZpcnN0X25hbWUiOiJBc2h3YW5pIiwibGFzdF9uYW1lIjoiQXNod2FuaSIsImVtYWlsIjoiYS50cmlwYXRoaS4yOS4wNkBnbWFpbC5jb20iLCJyb2xlIjoidXNlciIsInZhbGlkaXR5IjoxfQ.9TfPCirn3_0AAft55qJJW9zW31zoA0seakAGyW-2M2w';
  // Replace this with your actual token
  static const url = 'https://gravityclasses.live/api/course_details_by_id?auth_token=$authToken&course_id=35%27';

  Future<User> fetchUsers() async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final body = response.body;

     User user = User.fromJson(jsonDecode(body)[0]);
      return user;
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<List<Sections>> fetchSections(String userId) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> body = jsonDecode(response.body);

      List<Sections> sections = body.map((dynamic item) {
        return Sections.fromJson(item as Map<String, dynamic>);
      }).toList();

      return sections;
    } else {
      throw Exception('Failed to load sections');
    }
  }

    // print('Fetching sections for user ID: $userId');
    // const url = 'https://gravityclasses.live/api/course_details_by_id?auth_token=$authToken&course_id=35%27';
    // final uri = Uri.parse(url);
    //
    // final response = await http.get(uri);
    //
    // if (response.statusCode == 200) {
    //   final List<dynamic> body = jsonDecode(response.body);

      // Assuming the sections are under 'data' -> 'sections'
      // List<dynamic> sectionsData = body['data']['sections'] ?? []; // Adjust this according to the actual response
      //
      // print('Sections data: $sectionsData');
      // Map the sections data to List<Sections>
      // List<Sections> sections = body.map(dynamic item) {
      //   return Sections.fromJson(item as Map<String, dynamic>); // Ensure correct typing
      // }).toList();

    //   return sections;
    // } else if (response.statusCode == 401) {
    //   print('Unauthorized: ${response.body}'); // Log the unauthorized response
    //   throw Exception('Unauthorized: ${response.body}');
    // } else {
    //   print('Failed to load sections: ${response.statusCode} - ${response.body}');
    //   throw Exception('Failed to load sections: ${response.statusCode} - ${response.body}');
    // }
  // }


}



// void main ()async{
//   UserApi userapi = UserApi();
//   User user = await  userapi.fetchUsers();
//   print(user.title);
// }

