import 'package:hive_flutter/hive_flutter.dart';
part 'studentmodel.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  int key;

  @HiveField(1)
  String name;

  @HiveField(2)
  String gender;

  @HiveField(3)
  String age;

  @HiveField(4)
  String standard;

  @HiveField(5)
  dynamic image;

  StudentModel({
    required this.key,
    required this.name,
    required this.age,
    required this.gender,
    this.image,
    required this.standard,
  });
}
