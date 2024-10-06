import 'package:apikeyyoutubevideo/models/Sections.dart';
import 'package:apikeyyoutubevideo/provider/UserProvider.dart';
import 'package:apikeyyoutubevideo/screens/LessonListScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SectionListScreen extends StatefulWidget {
  final String userId;

  SectionListScreen({required this.userId});

  @override
  State<SectionListScreen> createState() => _SectionListScreenState();
}

class _SectionListScreenState extends State<SectionListScreen> {
  late Future<List<Sections>> _sectionsFuture;

  @override
  void initState() {
    super.initState();
    // Fetch sections when the widget is initialized
    _sectionsFuture = Provider.of<UserProvider>(context, listen: false).fetchSections(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sections for User ${widget.userId}'),
      ),
      body: FutureBuilder<List<Sections>>(
        future: _sectionsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No sections available.'));
          } else {
            final sections = snapshot.data!;
            return ListView.builder(
              itemCount: sections.length,
              itemBuilder: (context, index) {
                final section = sections[index];
                return InkWell(
                  onTap: () {
                    // Navigate to lesson list screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LessonListScreen(sectionId: section.id ?? ''),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ID: ${section.id ?? '0'}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Title: ${section.title ?? 'Untitled Section'}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Course ID: ${section.courseId ?? 'N/A'}'),
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
}


// import 'package:apikeyyoutubevideo/models/Sections.dart';
// import 'package:apikeyyoutubevideo/provider/UserProvider.dart';
// import 'package:apikeyyoutubevideo/screens/LessonListScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class SectionListScreen extends StatefulWidget {
//   final String userId;
//
//   SectionListScreen({required this.userId});
//
//   @override
//   State<SectionListScreen> createState() => _SectionListScreenState();
// }
//
// class _SectionListScreenState extends State<SectionListScreen> {
//   late Future<List<Sections>> _sectionsFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     // Fetch sections when the widget is initialized
//     _sectionsFuture = Provider.of<UserProvider>(context, listen: false).fetchSections(widget.userId);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sections for User ${widget.userId}'),
//       ),
//       body: FutureBuilder<List<Sections>>(
//         future: _sectionsFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No sections available.'));
//           } else {
//             final sections = snapshot.data!;
//             return ListView.builder(
//               itemCount: sections.length,
//               itemBuilder: (context, index) {
//                 final section = sections[index];
//                 return InkWell(
//                   onTap: () {
//                     // Navigate to lesson list screen
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LessonListScreen(sectionId: section.id ?? ''),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     width: double.infinity,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text("ID: ${section.id ?? '0'}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text("Title: ${section.title ?? 'Untitled Section'}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text('Course ID: ${section.courseId ?? 'N/A'}'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
//
//
// // import 'package:apikeyyoutubevideo/models/Sections.dart';
// // import 'package:apikeyyoutubevideo/provider/UserProvider.dart';
// // import 'package:apikeyyoutubevideo/screens/LessonListScreen.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// //
// // class SectionListScreen extends StatefulWidget {
// //   final String userId;
// //
// //   SectionListScreen({required this.userId});
// //
// //   @override
// //   State<SectionListScreen> createState() => _SectionListScreenState();
// // }
// //
// // class _SectionListScreenState extends State<SectionListScreen> {
// //   // Dummy function to simulate API call to fetch sections. Replace with actual implementation.
// //
// //   void initState() {
// //     super.initState();
// //     // Fetch users when the widget is initialized
// //     Provider.of<UserProvider>(context, listen: false).fetchUsers();
// //   }
// //
// //
// //   Future<List<Sections>> fetchSections(String userId) async {
// //     print('Section Screen user Id: $userId'); // Debug print
// //     // Simulating an API call delay
// //     await Future.delayed(Duration(seconds: 2));
// //
// //     // Replace with actual API call logic to fetch sections
// //     // Dummy data for demonstration purposes
// //     List<Sections> dummyData = [
// //       // Sections(
// //       //   id: '674',
// //       //   title: 'Bio',
// //       //   courseId: '35',
// //       //   subjectId: '6',
// //       //   order: '0',
// //       // ),
// //     ];
// //
// //     print('Sections fetched: ${dummyData.length}'); // Print the number of sections fetched
// //     return dummyData; // Return dummy data for testing
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Sections for User ${widget.userId}'),
// //       ),
// //       body: FutureBuilder<List<Sections>>(
// //         future: fetchSections(widget.userId),
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return Center(child: CircularProgressIndicator());
// //           } else if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //             return Center(child: Text('No sections available.'));
// //           } else {
// //             final sections = snapshot.data!;
// //             // Debug print to check the fetched sections
// //             for (var section in sections) {
// //               print('Section ID: ${section.id}, Title: ${section.title}');
// //             }
// //
// //             return ListView.builder(
// //               itemCount: sections.length,
// //               itemBuilder: (context, index) {
// //                 final section = sections[index];
// //                 return InkWell(
// //                   onTap: () {
// //                     // Navigate to lesson list screen
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                         builder: (context) => LessonListScreen(sectionId: section.id ?? ''),
// //                       ),
// //                     );
// //                   },
// //                   child: Container(
// //                     width: double.infinity,
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.all(8.0),
// //                           child: Text("ID: ${section.id ?? '0'}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(8.0),
// //                           child: Text("Title: ${section.title ?? 'Untitled Section'}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(8.0),
// //                           child: Text('Course ID: ${section.courseId ?? 'N/A'}'),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               },
// //             );
// //           }
// //         },
// //       ),
// //     );
// //   }
// // }
// //
// //
// // // import 'package:apikeyyoutubevideo/models/Sections.dart';
// // // import 'package:apikeyyoutubevideo/screens/LessonListScreen.dart';
// // // import 'package:flutter/material.dart';
// // //
// // // class SectionListScreen extends StatelessWidget {
// // //   final String userId;
// // //
// // //   SectionListScreen({required this.userId});
// // //
// // //   // Dummy function to simulate API call to fetch sections. Replace with actual implementation.
// // //   Future<List<Sections>> fetchSections(String userId) async {
// // //     // Replace with actual API call logic to fetch sections
// // //     // Dummy data for demonstration purposes
// // //     return [
// // //       Sections(
// // //         id: '674',
// // //         title: 'Bio',
// // //         courseId: '35',
// // //         subjectId: '6',
// // //         order: '0',
// // //         // lessons: [],
// // //         // totalDuration: '03:04:47',
// // //         // lessonCounterStarts: 1,
// // //         // lessonCounterEnds: 2,
// // //         // completedLessonNumber: 0,
// // //         // userValidity: true,
// // //       ),
// // //     ];
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Sections for User $userId'),
// // //       ),
// // //       body: FutureBuilder<List<Sections>>(
// // //         future: fetchSections(userId),
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return Center(child: CircularProgressIndicator());
// // //           } else if (snapshot.hasError) {
// // //             return Center(child: Text('Error: ${snapshot.error}'));
// // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //             return Center(child: Text('No sections available.'));
// // //           } else {
// // //             final sections = snapshot.data!;
// // //             return ListView.builder(
// // //               itemCount: sections.length,
// // //               itemBuilder: (context, index) {
// // //                 final section = sections[index];
// // //                 print('section: ${section.id}');
// // //                 return InkWell(
// // //                   onTap: () {
// // //                     // Navigate to lesson list screen
// // //                     Navigator.push(
// // //                       context,
// // //                       MaterialPageRoute(
// // //                         builder: (context) => LessonListScreen(sectionId: section.id ?? ''),
// // //                       ),
// // //                     );
// // //                   },
// // //                   child: Container(
// // //                     width: double.infinity,
// // //                     child: Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //
// // //                           Padding(
// // //                           padding: const EdgeInsets.all(8.0),
// // //                           child: Text("id : ${section.id}" ?? '0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// // //                         ),
// // //
// // //
// // //                         Padding(
// // //                           padding: const EdgeInsets.all(8.0),
// // //                           child: Text("title : ${section.title}" ?? 'Untitled Section', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// // //                         ),
// // //
// // //                         Padding(
// // //                           padding: const EdgeInsets.all(8.0),
// // //                           child: Text('courseId: ${section.courseId ?? 'N/A'}'),
// // //                         ),
// // //
// // //                         // Padding(
// // //                         //   padding: const EdgeInsets.all(8.0),
// // //                         //   child: Text('Duration: ${section.totalDuration ?? 'N/A'}'),
// // //                         // ),
// // //                         //
// // //                         // Padding(
// // //                         //   padding: const EdgeInsets.all(8.0),
// // //                         //   child: Text('completedLessonNumber: ${section.completedLessonNumber ?? 'N/A'}'),
// // //                         // ),
// // //                       ],
// // //
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //             );
// // //           }
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // //
// // //
// // // // import 'package:flutter/material.dart';
// // // // import 'package:gravityapi4/models/Sections.dart';
// // // // import 'package:gravityapi4/screens/LessonListScreen.dart';
// // // //
// // // //
// // // // class SectionListScreen extends StatelessWidget {
// // // //   final String userId;
// // // //
// // // //   SectionListScreen({required this.userId});
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     // Fetch sections using userId (implement logic similar to UserProvider)
// // // //
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Sections for User $userId'),
// // // //       ),
// // // //       body: FutureBuilder<List<Sections>>(
// // // //         // Implement your API call to fetch sections here
// // // //         // For now, returning an empty list for demonstration
// // // //         future: fetchSections(userId),
// // // //         builder: (context, snapshot) {
// // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // //             return Center(child: CircularProgressIndicator());
// // // //           } else if (snapshot.hasError) {
// // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // //             return Center(child: Text('No sections available.'));
// // // //           } else {
// // // //             final sections = snapshot.data!;
// // // //             return ListView.builder(
// // // //               itemCount: sections.length,
// // // //               itemBuilder: (context, index) {
// // // //                 final section = sections[index];
// // // //                 return ListTile(
// // // //                   title: Text(section.title),
// // // //                   onTap: () {
// // // //                     // Navigate to lesson list screen
// // // //                     Navigator.push(
// // // //                       context,
// // // //                       MaterialPageRoute(
// // // //                         builder: (context) => LessonListScreen(sectionId: section.id),
// // // //                       ),
// // // //                     );
// // // //                   },
// // // //                 );
// // // //               },
// // // //             );
// // // //           }
// // // //         },
// // // //       ),
// // // //     );
// // // //   }
// // // // }
