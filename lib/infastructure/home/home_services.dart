import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import '../../domain/home/homeservices.dart';
import '../../domain/models/studentmodel.dart';
import 'package:dartz/dartz.dart';

@LazySingleton(as: HomeServices)
class HomeServiceImpl implements HomeServices {
  @override
  Future<List<StudentModel>> addStudent({required StudentModel model}) async {
    final studentDb = await Hive.openBox<StudentModel>("student_db");
    await studentDb.add(model);
    return studentDb.values.toList();
  }



  @override
  Future<List<StudentModel>> deleteStudent({required int index}) async {
    final studentDb = await Hive.openBox<StudentModel>("student_db");
    await studentDb.deleteAt(index);

    return studentDb.values.toList();
  }

  @override
  Future<Either<Exception, List<StudentModel>>> getallstudents() async {
    try {
      final studentDb = await Hive.openBox<StudentModel>("student_db");

      return right(studentDb.values.toList());
    } catch (e) {
      return left(Exception(e.toString()));
    }
  }

  @override
  Future<List<StudentModel>> editStudent(
      {required StudentModel model, required int index}) async {
    final studentDb = await Hive.openBox<StudentModel>("student_db");

    studentDb.putAt(index, model);

    return studentDb.values.toList();
  }
}
