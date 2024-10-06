import 'package:apikeyyoutubevideo/models/Sections.dart';
import 'package:apikeyyoutubevideo/models/User.dart';
import 'package:apikeyyoutubevideo/services/UserApi.dart';
import 'package:flutter/material.dart';


class UserProvider with ChangeNotifier {
  User _users = User();
  bool _isLoading = false;
  String? _errorMessage;

  User get users => _users;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchUsers() async {
    _isLoading = true;
    _errorMessage = null;  // Reset the error message before fetching new data
    notifyListeners();

    try {
      UserApi userApi =UserApi();
      _users = await userApi.fetchUsers();  // Assuming UserApi.fetchUsers() is a function that fetches the list of users.
    } catch (error) {
      _errorMessage = 'Failed to load users';  // Or set a more descriptive error message based on the caught error
    } finally {
      _isLoading = false;
      notifyListeners();  // Notify that loading is done and data/error is available
    }
  }

  // New method to fetch sections based on user ID
  Future<List<Sections>> fetchSections(String userId) async {
    _isLoading = true;
    _errorMessage = null; // Reset the error message before fetching new data
    notifyListeners();

    try {
      UserApi userApi = UserApi();
      List<Sections> sections = await userApi.fetchSections(userId);
      return sections;
    } catch (error) {
      _errorMessage = 'Failed to load sections';
      return []; // Return an empty list on error
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
