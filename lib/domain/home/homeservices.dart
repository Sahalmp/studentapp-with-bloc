import 'package:dartz/dartz.dart';

import '../models/studentmodel.dart';

abstract class HomeServices {
  Future<List<StudentModel>> addStudent({required StudentModel model});

  Future<Either<Exception, List<StudentModel>>> getallstudents();
  Future<List<StudentModel>> deleteStudent({required int index});

  Future<List<StudentModel>> editStudent(
      {required StudentModel model, required int index});

}
