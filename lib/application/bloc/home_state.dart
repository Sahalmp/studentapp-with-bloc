part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<StudentModel> students,
    required bool isError,
    image,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(students: [], isError: false);
}
