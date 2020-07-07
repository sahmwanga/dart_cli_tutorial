import 'package:json_annotation/json_annotation.dart';
import './address.dart';

part 'person.g.dart';

@JsonSerializable(nullable: false)
class Person {
  final int id;
  final String name;
  final int age;
  Address address;

  Person(this.id, this.name, this.age, this.address);

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
