part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialize() = Initialize;
  const factory HomeEvent.addStudent({required StudentModel model}) =
      AddStudent;
  const factory HomeEvent.deleteStudent({required int index}) = DeleteStudent;
  const factory HomeEvent.editStudent(
      {required StudentModel model, required int index}) = EditStudent;
  const factory HomeEvent.getallstudents() = Getallstudents;
  const factory HomeEvent.getimage({image}) = GetImage;
  const factory HomeEvent.getgender({gender}) = Getgender;
    const factory HomeEvent.getclass({standard}) = Getstandard;

}
