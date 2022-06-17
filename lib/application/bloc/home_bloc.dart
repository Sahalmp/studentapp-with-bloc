import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:studentapp/domain/home/homeservices.dart';

import '../../domain/models/studentmodel.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeServices _homeServices;
  HomeBloc(this._homeServices) : super(HomeState.initial()) {
    on<Getallstudents>((event, emit) async {
      print('get all called');

      final result = await _homeServices.getallstudents();
      final _state = result.fold(
          (l) => const HomeState(students: [], isError: true),
          (r) => HomeState(isError: false, students: r));
      emit(_state);
    });

    on<AddStudent>(
      (event, emit) async { 
        await _homeServices.addStudent(model: event.model);
        add(const Getallstudents());
      },
    );
    on<GetImage>((event, emit) {
      print('get image called');
      emit(state.copyWith(image: event.image));
    });
    on<Getgender>((event, emit) {
      print('get image called');
      emit(state.copyWith(gender: event.gender));
    });
    on<Getstandard>((event, emit) {
      print('get image called');
      emit(state.copyWith(standard: event.standard));
    });
    on<DeleteStudent>((event, emit) async {
      await _homeServices.deleteStudent(index: event.index);
      add(const Getallstudents());
    });
    on<EditStudent>((event, emit) async {
      await _homeServices.editStudent(model: event.model, index: event.index);
      add(const Getallstudents());
    });
  
  }
}

