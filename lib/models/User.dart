
import 'package:apikeyyoutubevideo/models/Sections.dart';

class User {
  String? id;
  String? title;
  String? shortDescription;
  String? description;
  List<dynamic>? outcomes;
  String? language;
  String? categoryId;
  String? subCategoryId;
  String? section;
  List<dynamic>? requirements;
  String? price;
  dynamic discountFlag;
  String? discountedPrice;
  String? level;
  String? userId;
  String? thumbnail;
  String? videoUrl;
  String? dateAdded;
  String? expiryDays;
  String? lastModified;
  dynamic visibility;
  String? isTopCourse;
  String? isAdmin;
  String? status;
  String? courseOverviewProvider;
  String? metaKeywords;
  String? metaDescription;
  dynamic isFreeCourse;
  num? rating;
  num? numberOfRatings;
  String? instructorName;
  num? totalEnrollment;
  String? shareableLink;
  List<Sections>? sections;
  bool? isWishlisted;
  num? isPurchased;
  List<String>? includes;

  User({
    this.id,
    this.title,
    this.shortDescription,
    this.description,
    this.outcomes,
    this.language,
    this.categoryId,
    this.subCategoryId,
    this.section,
    this.requirements,
    this.price,
    this.discountFlag,
    this.discountedPrice,
    this.level,
    this.userId,
    this.thumbnail,
    this.videoUrl,
    this.dateAdded,
    this.expiryDays,
    this.lastModified,
    this.visibility,
    this.isTopCourse,
    this.isAdmin,
    this.status,
    this.courseOverviewProvider,
    this.metaKeywords,
    this.metaDescription,
    this.isFreeCourse,
    this.rating,
    this.numberOfRatings,
    this.instructorName,
    this.totalEnrollment,
    this.shareableLink,
    this.sections,
    this.isWishlisted,
    this.isPurchased,
    this.includes,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    shortDescription = json['short_description'];
    description = json['description'];
    outcomes = json['outcomes'] != null
        ? List<dynamic>.from(json['outcomes'].map((v) => v))
        : null;
    language = json['language'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    section = json['section'];
    requirements = json['requirements'] != null
        ? List<dynamic>.from(json['requirements'].map((v) => v))
        : null;
    price = json['price'];
    discountFlag = json['discount_flag'];
    discountedPrice = json['discounted_price'];
    level = json['level'];
    userId = json['user_id'];
    thumbnail = json['thumbnail'];
    videoUrl = json['video_url'];
    dateAdded = json['date_added'];
    expiryDays = json['expiry_days'];
    lastModified = json['last_modified'];
    visibility = json['visibility'];
    isTopCourse = json['is_top_course'];
    isAdmin = json['is_admin'];
    status = json['status'];
    courseOverviewProvider = json['course_overview_provider'];
    metaKeywords = json['meta_keywords'];
    metaDescription = json['meta_description'];
    isFreeCourse = json['is_free_course'];
    rating = json['rating'];
    numberOfRatings = json['number_of_ratings'];
    instructorName = json['instructor_name'];
    totalEnrollment = json['total_enrollment'];
    shareableLink = json['shareable_link'];
    if (json['sections'] != null) {
      sections = List<Sections>.from(
          json['sections'].map((v) => Sections.fromJson(v)));
    }
    isWishlisted = json['is_wishlisted'];
    isPurchased = json['is_purchased'];
    includes =
        json['includes'] != null ? List<String>.from(json['includes']) : [];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['short_description'] = shortDescription;
    map['description'] = description;
    if (outcomes != null) {
      map['outcomes'] = outcomes!.map((v) => v).toList();
    }
    map['language'] = language;
    map['category_id'] = categoryId;
    map['sub_category_id'] = subCategoryId;
    map['section'] = section;
    if (requirements != null) {
      map['requirements'] = requirements!.map((v) => v).toList();
    }
    map['price'] = price;
    map['discount_flag'] = discountFlag;
    map['discounted_price'] = discountedPrice;
    map['level'] = level;
    map['user_id'] = userId;
    map['thumbnail'] = thumbnail;
    map['video_url'] = videoUrl;
    map['date_added'] = dateAdded;
    map['expiry_days'] = expiryDays;
    map['last_modified'] = lastModified;
    map['visibility'] = visibility;
    map['is_top_course'] = isTopCourse;
    map['is_admin'] = isAdmin;
    map['status'] = status;
    map['course_overview_provider'] = courseOverviewProvider;
    map['meta_keywords'] = metaKeywords;
    map['meta_description'] = metaDescription;
    map['is_free_course'] = isFreeCourse;
    map['rating'] = rating;
    map['number_of_ratings'] = numberOfRatings;
    map['instructor_name'] = instructorName;
    map['total_enrollment'] = totalEnrollment;
    map['shareable_link'] = shareableLink;
    if (sections != null) {
      map['sections'] = sections!.map((v) => v.toJson()).toList();
    }
    map['is_wishlisted'] = isWishlisted;
    map['is_purchased'] = isPurchased;
    map['includes'] = includes;
    return map;
  }

  User copyWith({
    String? id,
    String? title,
    String? shortDescription,
    String? description,
    List<dynamic>? outcomes,
    String? language,
    String? categoryId,
    String? subCategoryId,
    String? section,
    List<dynamic>? requirements,
    String? price,
    dynamic discountFlag,
    String? discountedPrice,
    String? level,
    String? userId,
    String? thumbnail,
    String? videoUrl,
    String? dateAdded,
    String? expiryDays,
    String? lastModified,
    dynamic visibility,
    String? isTopCourse,
    String? isAdmin,
    String? status,
    String? courseOverviewProvider,
    String? metaKeywords,
    String? metaDescription,
    dynamic isFreeCourse,
    num? rating,
    num? numberOfRatings,
    String? instructorName,
    num? totalEnrollment,
    String? shareableLink,
    List<Sections>? sections,
    bool? isWishlisted,
    num? isPurchased,
    List<String>? includes,
  }) {
    return User(
      id: id ?? this.id,
      title: title ?? this.title,
      shortDescription: shortDescription ?? this.shortDescription,
      description: description ?? this.description,
      outcomes: outcomes ?? this.outcomes,
      language: language ?? this.language,
      categoryId: categoryId ?? this.categoryId,
      subCategoryId: subCategoryId ?? this.subCategoryId,
      section: section ?? this.section,
      requirements: requirements ?? this.requirements,
      price: price ?? this.price,
      discountFlag: discountFlag ?? this.discountFlag,
      discountedPrice: discountedPrice ?? this.discountedPrice,
      level: level ?? this.level,
      userId: userId ?? this.userId,
      thumbnail: thumbnail ?? this.thumbnail,
      videoUrl: videoUrl ?? this.videoUrl,
      dateAdded: dateAdded ?? this.dateAdded,
      expiryDays: expiryDays ?? this.expiryDays,
      lastModified: lastModified ?? this.lastModified,
      visibility: visibility ?? this.visibility,
      isTopCourse: isTopCourse ?? this.isTopCourse,
      isAdmin: isAdmin ?? this.isAdmin,
      status: status ?? this.status,
      courseOverviewProvider:
          courseOverviewProvider ?? this.courseOverviewProvider,
      metaKeywords: metaKeywords ?? this.metaKeywords,
      metaDescription: metaDescription ?? this.metaDescription,
      isFreeCourse: isFreeCourse ?? this.isFreeCourse,
      rating: rating ?? this.rating,
      numberOfRatings: numberOfRatings ?? this.numberOfRatings,
      instructorName: instructorName ?? this.instructorName,
      totalEnrollment: totalEnrollment ?? this.totalEnrollment,
      shareableLink: shareableLink ?? this.shareableLink,
      sections: sections ?? this.sections,
      isWishlisted: isWishlisted ?? this.isWishlisted,
      isPurchased: isPurchased ?? this.isPurchased,
      includes: includes ?? this.includes,
    );
  }
}

/// id : "35"
/// title : "G 13 NEET Passout"
/// short_description : ""
/// description : ""
/// outcomes : []
/// language : "english"
/// category_id : "4"
/// sub_category_id : "6"
/// section : "[674,679,680]"
/// requirements : []
/// price : "Rs0"
/// discount_flag : null
/// discounted_price : "0"
/// level : "beginner"
/// user_id : "1"
/// thumbnail : "https://gravityclasses.live/uploads/thumbnails/course_thumbnails/course_thumbnail_default_35.jpg"
/// video_url : ""
/// date_added : "1724284800"
/// expiry_days : "365"
/// last_modified : "1727308800"
/// visibility : null
/// is_top_course : "0"
/// is_admin : "1"
/// status : "active"
/// course_overview_provider : ""
/// meta_keywords : ""
/// meta_description : ""
/// is_free_course : null
/// rating : 0
/// number_of_ratings : 0
/// instructor_name : "Gravity Classes"
/// total_enrollment : 9
/// shareable_link : "https://gravityclasses.live/home/course/g-13-neet-passout/35"
/// sections : [{"id":"674","title":"Biomolecule &amp; Enzymes","course_id":"35","subject_id":"6","order":"0","lessons":[{"id":"2527","title":"Biomolecule - L01","duration":"01 Hr 09 Min","course_id":"35","section_id":"674","video_type":"html5","video_url":"https://www.html5rocks.com/en/tutorials/video/basics/devstories.webm","video_t":"YouTube","video_u":"https://youtu.be/cAA4y9DYg9I","lesson_type":"video","attachment":null,"attachment_url":"https://gravityclasses.live/uploads/lesson_files/","attachment_type":"url","summary":"","is_completed":0,"playback_time":"2","user_validity":true},{"id":"2528","title":"Enzymes - L01","duration":"01 Hr 55 Min","course_id":"35","section_id":"674","video_type":"html5","video_url":"https://www.html5rocks.com/en/tutorials/video/basics/devstories.webm","video_t":"YouTube","video_u":"https://youtu.be/qV-E42hOH8Y","lesson_type":"video","attachment":null,"attachment_url":"https://gravityclasses.live/uploads/lesson_files/","attachment_type":"url","summary":"","is_completed":0,"playback_time":0,"user_validity":true}],"total_duration":"03:04:47","lesson_counter_starts":1,"lesson_counter_ends":2,"completed_lesson_number":0,"user_validity":true},{"id":"679","title":"Chemistry","course_id":"35","subject_id":"2","order":"0","lessons":[],"total_duration":"00:00:00","lesson_counter_starts":3,"lesson_counter_ends":3,"completed_lesson_number":0,"user_validity":true},{"id":"680","title":"Physics ","course_id":"35","subject_id":"1","order":"0","lessons":[],"total_duration":"00:00:00","lesson_counter_starts":4,"lesson_counter_ends":4,"completed_lesson_number":0,"user_validity":true}]
/// is_wishlisted : false
/// is_purchased : 1
/// includes : ["03:04:47 Hours On demand videos","2 Lessons","High quality videos","Life time access"]
