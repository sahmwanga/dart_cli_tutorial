/*
 * Filename: /home/dev/Documents/prs/tutorials/DART/dart_tutorial/test/person_test.dart
 * Path: /home/dev/Documents/prs/tutorials/DART/dart_tutorial/test
 * Created Date: Tuesday, July 7th 2020, 8:12:20 am
 * Author: sahmwanga
 * 
 * Copyright (c) 2020 Your Company
 */

import 'package:test/test.dart';
import '../bin/models/person.dart';

void main() {
  test("Json encode", () {
    var personJson = {
      "id": 1,
      "name": 'Salehe',
      "age": 12,
      "address": {"location": "Dar es Salaam", "lat": 12, "lng": 12}
    };

    Person p = Person.fromJson(personJson);

    assert(p != null);
    expect(p.age, 12);
    expect(p.address.location, "Dar es Salaam");
  });
}
