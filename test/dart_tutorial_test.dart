import 'package:test/test.dart';
import '../bin/services/student.service.dart';
import '../bin/models/Student.dart';

void main() {
  test('Decode json', () {
    String json =
        '{"name":"John Smith","email":"john@example.com","dob":"2000-02-14T00:00:00.000"}';

    Student s = StudentService.fromJson(json);
    assert(s != null);
    expect(s.name, "John Smith");
    expect(s.email, "john@example.com");
  });

  test("Encode Student", () {
    String json =
        '{"name":"John Smith","email":"john@example.com","dob":"2000-02-14T00:00:00.000"}';

    Student s = new Student(
      "John Smith",
      "john@example.com",
      new DateTime(2000, 2, 14),
    );
    var jsonString = StudentService.toJson(s);
    expect(jsonString, json);
  });
}
