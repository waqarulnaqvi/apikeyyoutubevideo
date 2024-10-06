
import 'package:apikeyyoutubevideo/models/Lessons.dart';

class Sections {
  // Constructor with optional named parameters
  Sections( {
    String? id,
    String? title,
    String? courseId,
    String? subjectId,
    String? order,
    // List<Lessons>? lessons,
    String? totalDuration,
    int? lessonCounterStarts,  // Changed to int to match the API response
    int? lessonCounterEnds,    // Changed to int to match the API response
    int? completedLessonNumber, // Changed to int to match the API response
    bool? userValidity,
  })  : _id = id,
        _title = title,
        _courseId = courseId,
        _subjectId = subjectId,
        _order = order,
        // _lessons = lessons ?? [],
        _totalDuration = totalDuration,
        _lessonCounterStarts = lessonCounterStarts,
        _lessonCounterEnds = lessonCounterEnds,
        _completedLessonNumber = completedLessonNumber,
        _userValidity = userValidity
  ;

  // Factory constructor to create an instance from JSON
  Sections.fromJson(Map<String, dynamic> json)
      : _id = json['id'] as String?,
        _title = json['title'] as String?,
        _courseId = json['course_id'] as String?,
        _subjectId = json['subject_id'] as String?,
        _order = json['order'] as String?,
        // _lessons = (json['lessons'] as List<dynamic>?)
        //     ?.map((e) => Lessons.fromJson(e as Map<String, dynamic>))
        //     .toList() ?? [],
        _totalDuration = json['total_duration'] as String?,
        _lessonCounterStarts = json['lesson_counter_starts'] as int?, // Changed to int
        _lessonCounterEnds = json['lesson_counter_ends'] as int?,     // Changed to int
        _completedLessonNumber = json['completed_lesson_number'] as int?, // Changed to int
        _userValidity = json['user_validity'] as bool?;

  // Private fields
  final String? _id;
  final String? _title;
  final String? _courseId;
  final String? _subjectId;
  final String? _order;
  // final List<Lessons> _lessons;
  final String? _totalDuration;
  final int? _lessonCounterStarts;  // Changed to int
  final int? _lessonCounterEnds;    // Changed to int
  final int? _completedLessonNumber; // Changed to int
  final bool? _userValidity;

  // CopyWith method for creating modified copies
  Sections copyWith({
    String? id,
    String? title,
    String? courseId,
    String? subjectId,
    String? order,
    // List<Lessons>? lessons,
    String? totalDuration,
    int? lessonCounterStarts,  // Changed to int
    int? lessonCounterEnds,    // Changed to int
    int? completedLessonNumber, // Changed to int
    bool? userValidity,
  }) {
    return Sections(
      id: id ?? _id,
      title: title ?? _title,
      courseId: courseId ?? _courseId,
      subjectId: subjectId ?? _subjectId,
      order: order ?? _order,
      // lessons: lessons ?? _lessons,
      totalDuration: totalDuration ?? _totalDuration,
      lessonCounterStarts: lessonCounterStarts ?? _lessonCounterStarts,
      lessonCounterEnds: lessonCounterEnds ?? _lessonCounterEnds,
      completedLessonNumber: completedLessonNumber ?? _completedLessonNumber,
      userValidity: userValidity ?? _userValidity,
    );
  }

  // Getters
  String? get id => _id;
  String? get title => _title;
  String? get courseId => _courseId;
  String? get subjectId => _subjectId;
  String? get order => _order;
  // List<Lessons> get lessons => _lessons;
  String? get totalDuration => _totalDuration;
  int? get lessonCounterStarts => _lessonCounterStarts;  // Changed to int
  int? get lessonCounterEnds => _lessonCounterEnds;      // Changed to int
  int? get completedLessonNumber => _completedLessonNumber; // Changed to int
  bool? get userValidity => _userValidity;

  // Method to convert the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'title': _title,
      'course_id': _courseId,
      'subject_id': _subjectId,
      'order': _order,
      // 'lessons': _lessons.map((v) => v.toJson()).toList(),
      'total_duration': _totalDuration,
      'lesson_counter_starts': _lessonCounterStarts,  // Changed to int
      'lesson_counter_ends': _lessonCounterEnds,      // Changed to int
      'completed_lesson_number': _completedLessonNumber, // Changed to int
      'user_validity': _userValidity,
    };
  }
}


// class Sections {
//   // Constructor with optional named parameters
//   Sections({
//     String? id,
//     String? title,
//     String? courseId,
//     String? subjectId,
//     String? order,
//     List<Lessons>? lessons,
//     String? totalDuration,
//     num? lessonCounterStarts,
//     num? lessonCounterEnds,
//     num? completedLessonNumber,
//     bool? userValidity,
//   })  : _id = id,
//         _title = title,
//         _courseId = courseId,
//         _subjectId = subjectId,
//         _order = order,
//         _lessons = lessons ?? [],
//         _totalDuration = totalDuration,
//         _lessonCounterStarts = lessonCounterStarts,
//         _lessonCounterEnds = lessonCounterEnds,
//         _completedLessonNumber = completedLessonNumber,
//         _userValidity = userValidity;
//
//   // Factory constructor to create an instance from JSON
//   Sections.fromJson(Map<String, dynamic> json)
//       : _id = json['id'] as String?,
//         _title = json['title'] as String?,
//         _courseId = json['course_id'] as String?,
//         _subjectId = json['subject_id'] as String?,
//         _order = json['order'] as String?,
//         _lessons = (json['lessons'] as List<dynamic>?)
//                 ?.map((e) => Lessons.fromJson(e as Map<String, dynamic>))
//                 .toList() ??
//             [],
//         _totalDuration = json['total_duration'] as String?,
//         _lessonCounterStarts = json['lesson_counter_starts'] as num?,
//         _lessonCounterEnds = json['lesson_counter_ends'] as num?,
//         _completedLessonNumber = json['completed_lesson_number'] as num?,
//         _userValidity = json['user_validity'] as bool?;
//
//   // Private fields
//   final String? _id;
//   final String? _title;
//   final String? _courseId;
//   final String? _subjectId;
//   final String? _order;
//   final List<Lessons> _lessons;
//   final String? _totalDuration;
//   final num? _lessonCounterStarts;
//   final num? _lessonCounterEnds;
//   final num? _completedLessonNumber;
//   final bool? _userValidity;
//
//   // CopyWith method for creating modified copies
//   Sections copyWith({
//     String? id,
//     String? title,
//     String? courseId,
//     String? subjectId,
//     String? order,
//     List<Lessons>? lessons,
//     String? totalDuration,
//     num? lessonCounterStarts,
//     num? lessonCounterEnds,
//     num? completedLessonNumber,
//     bool? userValidity,
//   }) {
//     return Sections(
//       id: id ?? _id,
//       title: title ?? _title,
//       courseId: courseId ?? _courseId,
//       subjectId: subjectId ?? _subjectId,
//       order: order ?? _order,
//       lessons: lessons ?? _lessons,
//       totalDuration: totalDuration ?? _totalDuration,
//       lessonCounterStarts: lessonCounterStarts ?? _lessonCounterStarts,
//       lessonCounterEnds: lessonCounterEnds ?? _lessonCounterEnds,
//       completedLessonNumber: completedLessonNumber ?? _completedLessonNumber,
//       userValidity: userValidity ?? _userValidity,
//     );
//   }
//
//   // Getters
//   String? get id => _id;
//
//   String? get title => _title;
//
//   String? get courseId => _courseId;
//
//   String? get subjectId => _subjectId;
//
//   String? get order => _order;
//
//   List<Lessons> get lessons => _lessons;
//
//   String? get totalDuration => _totalDuration;
//
//   num? get lessonCounterStarts => _lessonCounterStarts;
//
//   num? get lessonCounterEnds => _lessonCounterEnds;
//
//   num? get completedLessonNumber => _completedLessonNumber;
//
//   bool? get userValidity => _userValidity;
//
//   // Method to convert the object to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'id': _id,
//       'title': _title,
//       'course_id': _courseId,
//       'subject_id': _subjectId,
//       'order': _order,
//       'lessons': _lessons.map((v) => v.toJson()).toList(),
//       'total_duration': _totalDuration,
//       'lesson_counter_starts': _lessonCounterStarts,
//       'lesson_counter_ends': _lessonCounterEnds,
//       'completed_lesson_number': _completedLessonNumber,
//       'user_validity': _userValidity,
//     };
//   }
// }

/// id : "674"
/// title : "Biomolecule &amp; Enzymes"
/// course_id : "35"
/// subject_id : "6"
/// order : "0"
/// lessons : [{"id":"2527","title":"Biomolecule - L01","duration":"01 Hr 09 Min","course_id":"35","section_id":"674","video_type":"html5","video_url":"https://www.html5rocks.com/en/tutorials/video/basics/devstories.webm","video_t":"YouTube","video_u":"https://youtu.be/cAA4y9DYg9I","lesson_type":"video","attachment":null,"attachment_url":"https://gravityclasses.live/uploads/lesson_files/","attachment_type":"url","summary":"","is_completed":0,"playback_time":"2","user_validity":true},{"id":"2528","title":"Enzymes - L01","duration":"01 Hr 55 Min","course_id":"35","section_id":"674","video_type":"html5","video_url":"https://www.html5rocks.com/en/tutorials/video/basics/devstories.webm","video_t":"YouTube","video_u":"https://youtu.be/qV-E42hOH8Y","lesson_type":"video","attachment":null,"attachment_url":"https://gravityclasses.live/uploads/lesson_files/","attachment_type":"url","summary":"","is_completed":0,"playback_time":0,"user_validity":true}]
/// total_duration : "03:04:47"
/// lesson_counter_starts : 1
/// lesson_counter_ends : 2
/// completed_lesson_number : 0
/// user_validity : true
