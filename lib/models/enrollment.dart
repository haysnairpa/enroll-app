class Enrollment {
  final String userId;
  final List<String> subjectIds;
  final DateTime enrollmentDate;
  final int totalCredits;

  Enrollment({
    required this.userId,
    required this.subjectIds,
    required this.enrollmentDate,
    required this.totalCredits,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'subjectIds': subjectIds,
      'enrollmentDate': enrollmentDate.toIso8601String(),
      'totalCredits': totalCredits,
    };
  }

  factory Enrollment.fromMap(Map<String, dynamic> map) {
    return Enrollment(
      userId: map['userId'],
      subjectIds: List<String>.from(map['subjectIds']),
      enrollmentDate: DateTime.parse(map['enrollmentDate']),
      totalCredits: map['totalCredits'],
    );
  }
}
