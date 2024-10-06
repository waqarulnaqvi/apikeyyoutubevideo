


class Lessons {
  String? _id;
  String? _title;
  String? _duration;
  String? _courseId;
  String? _sectionId;
  String? _videoType;
  String? _videoUrl;
  String? _videoT;
  String? _videoU;
  String? _lessonType;
  dynamic _attachment;
  String? _attachmentUrl;
  String? _attachmentType;
  String? _summary;
  num? _isCompleted;
  String? _playbackTime;
  bool? _userValidity;

  Lessons({
    String? id,
    String? title,
    String? duration,
    String? courseId,
    String? sectionId,
    String? videoType,
    String? videoUrl,
    String? videoT,
    String? videoU,
    String? lessonType,
    dynamic attachment,
    String? attachmentUrl,
    String? attachmentType,
    String? summary,
    num? isCompleted,
    String? playbackTime,
    bool? userValidity,
  }) {
    _id = id;
    _title = title;
    _duration = duration;
    _courseId = courseId;
    _sectionId = sectionId;
    _videoType = videoType;
    _videoUrl = videoUrl;
    _videoT = videoT;
    _videoU = videoU;
    _lessonType = lessonType;
    _attachment = attachment;
    _attachmentUrl = attachmentUrl;
    _attachmentType = attachmentType;
    _summary = summary;
    _isCompleted = isCompleted;
    _playbackTime = playbackTime;
    _userValidity = userValidity;
  }

  Lessons.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _duration = json['duration'];
    _courseId = json['course_id'];
    _sectionId = json['section_id'];
    _videoType = json['video_type'];
    _videoUrl = json['video_url'];
    _videoT = json['video_t'];
    _videoU = json['video_u'];
    _lessonType = json['lesson_type'];
    _attachment = json['attachment'];
    _attachmentUrl = json['attachment_url'];
    _attachmentType = json['attachment_type'];
    _summary = json['summary'];
    _isCompleted = json['is_completed'];
    _playbackTime = json['playback_time'];
    _userValidity = json['user_validity'];
  }

  Lessons copyWith({
    String? id,
    String? title,
    String? duration,
    String? courseId,
    String? sectionId,
    String? videoType,
    String? videoUrl,
    String? videoT,
    String? videoU,
    String? lessonType,
    dynamic attachment,
    String? attachmentUrl,
    String? attachmentType,
    String? summary,
    num? isCompleted,
    String? playbackTime,
    bool? userValidity,
  }) =>
      Lessons(
        id: id ?? _id,
        title: title ?? _title,
        duration: duration ?? _duration,
        courseId: courseId ?? _courseId,
        sectionId: sectionId ?? _sectionId,
        videoType: videoType ?? _videoType,
        videoUrl: videoUrl ?? _videoUrl,
        videoT: videoT ?? _videoT,
        videoU: videoU ?? _videoU,
        lessonType: lessonType ?? _lessonType,
        attachment: attachment ?? _attachment,
        attachmentUrl: attachmentUrl ?? _attachmentUrl,
        attachmentType: attachmentType ?? _attachmentType,
        summary: summary ?? _summary,
        isCompleted: isCompleted ?? _isCompleted,
        playbackTime: playbackTime ?? _playbackTime,
        userValidity: userValidity ?? _userValidity,
      );

  String? get id => _id;

  String? get title => _title;

  String? get duration => _duration;

  String? get courseId => _courseId;

  String? get sectionId => _sectionId;

  String? get videoType => _videoType;

  String? get videoUrl => _videoUrl;

  String? get videoT => _videoT;

  String? get videoU => _videoU;

  String? get lessonType => _lessonType;

  dynamic get attachment => _attachment;

  String? get attachmentUrl => _attachmentUrl;

  String? get attachmentType => _attachmentType;

  String? get summary => _summary;

  num? get isCompleted => _isCompleted;

  String? get playbackTime => _playbackTime;

  bool? get userValidity => _userValidity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['duration'] = _duration;
    map['course_id'] = _courseId;
    map['section_id'] = _sectionId;
    map['video_type'] = _videoType;
    map['video_url'] = _videoUrl;
    map['video_t'] = _videoT;
    map['video_u'] = _videoU;
    map['lesson_type'] = _lessonType;
    map['attachment'] = _attachment;
    map['attachment_url'] = _attachmentUrl;
    map['attachment_type'] = _attachmentType;
    map['summary'] = _summary;
    map['is_completed'] = _isCompleted;
    map['playback_time'] = _playbackTime;
    map['user_validity'] = _userValidity;
    return map;
  }
}

// id : "2527"
// title : "Biomolecule - L01"
// duration : "01 Hr 09 Min"
// course_id : "35"
// section_id : "674"
// video_type : "html5"
// video_url : "https://www.html5rocks.com/en/tutorials/video/basics/devstories.webm"
// video_t : "YouTube"
// video_u : "https://youtu.be/cAA4y9DYg9I"
// lesson_type : "video"
// attachment : null
// attachment_url : "https://gravityclasses.live/uploads/lesson_files/"
// attachment_type : "url"
// summary : ""
// is_completed : 0
// playback_time : "2"
// user_validity : true
