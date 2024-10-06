import 'package:apikeyyoutubevideo/screens/YoutubeVideoSample.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/UserProvider.dart'; // Assuming you have a UserProvider managing user fetching logic
import 'SectionListScreen.dart'; // Assuming this screen shows sections based on a User's data

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch users when the widget is initialized
    Provider.of<UserProvider>(context, listen: false).fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Courses',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: userProvider.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          final user = userProvider.users;

          return ListTile(
            leading: (user.thumbnail != null && user.thumbnail!.isNotEmpty)
                ? Image.network(user.thumbnail!)
                : Icon(Icons.person),
            title: Text(user.title ?? 'Untitled Course'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.shortDescription ?? 'No description available'),
                Text('Category: ${user.categoryId ?? 'N/A'}'),
                Text('Price: ${user.price ?? 'Free'}'),
                Text('Rating: ${user.rating?.toString() ?? 'Unrated'}'),
                Text('Language: ${user.language?.toString() ?? 'Unrated'}'),
                Text('level: ${user.level?.toString() ?? 'Unrated'}'),
                Text('Instructor: ${user.instructorName?.toString() ?? 'Unrated'}'),

              ],
            ),
            onTap: () {
              // Navigate to SectionListScreen, passing the user ID
              if (user.id != null) {
                print("user id ${user.id}");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    // YoutubeVideoSample(title: "Youtube Video",)
                        SectionListScreen(userId: "${user.id}"),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
