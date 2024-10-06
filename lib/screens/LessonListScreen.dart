import 'package:apikeyyoutubevideo/models/Lessons.dart';
import 'package:flutter/material.dart';

class LessonListScreen extends StatelessWidget {
  final String sectionId;

  LessonListScreen({required this.sectionId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lessons for Section $sectionId'),
      ),
      body: FutureBuilder<List<Lessons>>(
        future: fetchLessons(sectionId), // Call the API function to fetch lessons
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator()); // Show loading indicator
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}')); // Handle error case
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No lessons available.')); // Show message if no data
          } else {
            final lessons = snapshot.data!; // Get the lessons list
            return ListView.builder(
              itemCount: lessons.length,
              itemBuilder: (context, index) {
                final lesson = lessons[index]; // Get each lesson
                // return ListTile(
                //   title: Text(lesson.title ?? 'No Title'), // Display the title
                //   subtitle: Text('Duration: ${lesson.duration ?? 'Unknown'}'), // Display duration
                //   onTap: () {
                //     // Handle lesson tap (optional)
                //   },

                return InkWell(
                  onTap: () {
                  },
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("id : ${lesson.id}" ?? '0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("video_u : ${lesson.videoU}" ?? '0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("title : ${lesson.title}" ?? 'Untitled Section', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('duration: ${lesson.duration}' ?? 'N/A'),
                        ),

                      ],

                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  // Implement the function to fetch lessons
  Future<List<Lessons>> fetchLessons(String sectionId) async {

    try {
      // Call your API with sectionId or fetch data locally
      await Future.delayed(Duration(seconds: 2)); // Simulate a network delay
      // Example of dummy data:
      return [
        Lessons(
          id: '1',
          title: 'Introduction',
          duration: '5:00',
          courseId: 'C1',
          sectionId: sectionId,
          videoType: 'video',
          videoUrl: 'url_to_video',
          isCompleted: 0,
        ),
        Lessons(
          id: '2',
          title: 'Advanced Concepts',
          duration: '12:00',
          courseId: 'C1',
          sectionId: sectionId,
          videoType: 'video',
          videoUrl: 'url_to_video',
          isCompleted: 1,
        ),
      ];
    } catch (error) {
      throw Exception('Failed to load lessons: $error');
    }
  }
}