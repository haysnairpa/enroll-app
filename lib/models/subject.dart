class Subject {
  final String id;
  final String name;
  final int credits;

  Subject({
    required this.id,
    required this.name,
    required this.credits,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'credits': credits,
    };
  }

  factory Subject.fromMap(Map<String, dynamic> map) {
    return Subject(
      id: map['id'],
      name: map['name'],
      credits: map['credits'],
    );
  }
}

final List<Subject> availableSubjects = [
  Subject(id: '1', name: 'Microcontroller', credits: 3),
  Subject(id: '2', name: 'IoT Programming', credits: 3),
  Subject(id: '3', name: 'Embedded System', credits: 3),
  Subject(id: '4', name: 'Robotics', credits: 4),
  Subject(id: '5', name: 'Automatics Navigation System', credits: 3),
  Subject(id: '6', name: 'IoT Project', credits: 4),
  Subject(id: '7', name: 'Cyber Security Fundamentals', credits: 3),
  Subject(id: '8', name: 'Security Risk Management', credits: 3),
  Subject(id: '9', name: 'Security Compliance and Audit', credits: 3),
  Subject(id: '10', name: 'Ethical Hacking', credits: 4),
  Subject(id: '11', name: 'Digital Forensics', credits: 3),
  Subject(id: '12', name: 'Cyber Security Project', credits: 4),
  Subject(id: '13', name: 'Image Processing and Recognition', credits: 3),
  Subject(id: '14', name: 'Computer Vision', credits: 4),
  Subject(id: '15', name: 'Natural Language Processing', credits: 3),
  Subject(id: '16', name: 'Natural Language Understanding and Generation', credits: 3),
  Subject(id: '17', name: 'Intelligent Robotics', credits: 4),
  Subject(id: '18', name: 'Deep Learning', credits: 4),
];
