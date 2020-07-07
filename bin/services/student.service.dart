import 'dart:convert';
import '../models/Student.dart';

class StudentService {
  static String toJson(Student s) {
    Map<String, dynamic> map() =>
        {'name': s.name, 'email': s.email, 'dob': s.dob.toIso8601String()};

    String result = jsonEncode(map());
    return result;
  }

  static Student fromJson(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);

    String name = json['name'];
    String email = json['email'];
    DateTime dob = DateTime.parse(json['dob']);

    Student s = new Student(name, email, dob);
    return s;
  }
}
