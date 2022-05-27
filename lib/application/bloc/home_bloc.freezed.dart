// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function(int index) deleteStudent,
    required TResult Function(StudentModel model, int index) editStudent,
    required TResult Function() getallstudents,
    required TResult Function(dynamic image) getimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(EditStudent value) editStudent,
    required TResult Function(Getallstudents value) getallstudents,
    required TResult Function(GetImage value) getimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, (v) => _then(v as _$Initialize));

  @override
  _$Initialize get _value => super._value as _$Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'HomeEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function(int index) deleteStudent,
    required TResult Function(StudentModel model, int index) editStudent,
    required TResult Function() getallstudents,
    required TResult Function(dynamic image) getimage,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(EditStudent value) editStudent,
    required TResult Function(Getallstudents value) getallstudents,
    required TResult Function(GetImage value) getimage,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements HomeEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$AddStudentCopyWith<$Res> {
  factory _$$AddStudentCopyWith(
          _$AddStudent value, $Res Function(_$AddStudent) then) =
      __$$AddStudentCopyWithImpl<$Res>;
  $Res call({StudentModel model});
}

/// @nodoc
class __$$AddStudentCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$AddStudentCopyWith<$Res> {
  __$$AddStudentCopyWithImpl(
      _$AddStudent _value, $Res Function(_$AddStudent) _then)
      : super(_value, (v) => _then(v as _$AddStudent));

  @override
  _$AddStudent get _value => super._value as _$AddStudent;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AddStudent(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$AddStudent implements AddStudent {
  const _$AddStudent({required this.model});

  @override
  final StudentModel model;

  @override
  String toString() {
    return 'HomeEvent.addStudent(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudent &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      __$$AddStudentCopyWithImpl<_$AddStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function(int index) deleteStudent,
    required TResult Function(StudentModel model, int index) editStudent,
    required TResult Function() getallstudents,
    required TResult Function(dynamic image) getimage,
  }) {
    return addStudent(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
  }) {
    return addStudent?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(EditStudent value) editStudent,
    required TResult Function(Getallstudents value) getallstudents,
    required TResult Function(GetImage value) getimage,
  }) {
    return addStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
  }) {
    return addStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(this);
    }
    return orElse();
  }
}

abstract class AddStudent implements HomeEvent {
  const factory AddStudent({required final StudentModel model}) = _$AddStudent;

  StudentModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteStudentCopyWith<$Res> {
  factory _$$DeleteStudentCopyWith(
          _$DeleteStudent value, $Res Function(_$DeleteStudent) then) =
      __$$DeleteStudentCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$DeleteStudentCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$DeleteStudentCopyWith<$Res> {
  __$$DeleteStudentCopyWithImpl(
      _$DeleteStudent _value, $Res Function(_$DeleteStudent) _then)
      : super(_value, (v) => _then(v as _$DeleteStudent));

  @override
  _$DeleteStudent get _value => super._value as _$DeleteStudent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$DeleteStudent(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteStudent implements DeleteStudent {
  const _$DeleteStudent({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.deleteStudent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStudent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$DeleteStudentCopyWith<_$DeleteStudent> get copyWith =>
      __$$DeleteStudentCopyWithImpl<_$DeleteStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function(int index) deleteStudent,
    required TResult Function(StudentModel model, int index) editStudent,
    required TResult Function() getallstudents,
    required TResult Function(dynamic image) getimage,
  }) {
    return deleteStudent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
  }) {
    return deleteStudent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(EditStudent value) editStudent,
    required TResult Function(Getallstudents value) getallstudents,
    required TResult Function(GetImage value) getimage,
  }) {
    return deleteStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
  }) {
    return deleteStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(this);
    }
    return orElse();
  }
}

abstract class DeleteStudent implements HomeEvent {
  const factory DeleteStudent({required final int index}) = _$DeleteStudent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteStudentCopyWith<_$DeleteStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditStudentCopyWith<$Res> {
  factory _$$EditStudentCopyWith(
          _$EditStudent value, $Res Function(_$EditStudent) then) =
      __$$EditStudentCopyWithImpl<$Res>;
  $Res call({StudentModel model, int index});
}

/// @nodoc
class __$$EditStudentCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$EditStudentCopyWith<$Res> {
  __$$EditStudentCopyWithImpl(
      _$EditStudent _value, $Res Function(_$EditStudent) _then)
      : super(_value, (v) => _then(v as _$EditStudent));

  @override
  _$EditStudent get _value => super._value as _$EditStudent;

  @override
  $Res call({
    Object? model = freezed,
    Object? index = freezed,
  }) {
    return _then(_$EditStudent(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as StudentModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditStudent implements EditStudent {
  const _$EditStudent({required this.model, required this.index});

  @override
  final StudentModel model;
  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.editStudent(model: $model, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditStudent &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$EditStudentCopyWith<_$EditStudent> get copyWith =>
      __$$EditStudentCopyWithImpl<_$EditStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function(int index) deleteStudent,
    required TResult Function(StudentModel model, int index) editStudent,
    required TResult Function() getallstudents,
    required TResult Function(dynamic image) getimage,
  }) {
    return editStudent(model, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
  }) {
    return editStudent?.call(model, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
    required TResult orElse(),
  }) {
    if (editStudent != null) {
      return editStudent(model, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(EditStudent value) editStudent,
    required TResult Function(Getallstudents value) getallstudents,
    required TResult Function(GetImage value) getimage,
  }) {
    return editStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
  }) {
    return editStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
    required TResult orElse(),
  }) {
    if (editStudent != null) {
      return editStudent(this);
    }
    return orElse();
  }
}

abstract class EditStudent implements HomeEvent {
  const factory EditStudent(
      {required final StudentModel model,
      required final int index}) = _$EditStudent;

  StudentModel get model => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EditStudentCopyWith<_$EditStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetallstudentsCopyWith<$Res> {
  factory _$$GetallstudentsCopyWith(
          _$Getallstudents value, $Res Function(_$Getallstudents) then) =
      __$$GetallstudentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetallstudentsCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$GetallstudentsCopyWith<$Res> {
  __$$GetallstudentsCopyWithImpl(
      _$Getallstudents _value, $Res Function(_$Getallstudents) _then)
      : super(_value, (v) => _then(v as _$Getallstudents));

  @override
  _$Getallstudents get _value => super._value as _$Getallstudents;
}

/// @nodoc

class _$Getallstudents implements Getallstudents {
  const _$Getallstudents();

  @override
  String toString() {
    return 'HomeEvent.getallstudents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Getallstudents);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function(int index) deleteStudent,
    required TResult Function(StudentModel model, int index) editStudent,
    required TResult Function() getallstudents,
    required TResult Function(dynamic image) getimage,
  }) {
    return getallstudents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
  }) {
    return getallstudents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
    required TResult orElse(),
  }) {
    if (getallstudents != null) {
      return getallstudents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(EditStudent value) editStudent,
    required TResult Function(Getallstudents value) getallstudents,
    required TResult Function(GetImage value) getimage,
  }) {
    return getallstudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
  }) {
    return getallstudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
    required TResult orElse(),
  }) {
    if (getallstudents != null) {
      return getallstudents(this);
    }
    return orElse();
  }
}

abstract class Getallstudents implements HomeEvent {
  const factory Getallstudents() = _$Getallstudents;
}

/// @nodoc
abstract class _$$GetImageCopyWith<$Res> {
  factory _$$GetImageCopyWith(
          _$GetImage value, $Res Function(_$GetImage) then) =
      __$$GetImageCopyWithImpl<$Res>;
  $Res call({dynamic image});
}

/// @nodoc
class __$$GetImageCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$GetImageCopyWith<$Res> {
  __$$GetImageCopyWithImpl(_$GetImage _value, $Res Function(_$GetImage) _then)
      : super(_value, (v) => _then(v as _$GetImage));

  @override
  _$GetImage get _value => super._value as _$GetImage;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$GetImage(
      image: image == freezed ? _value.image : image,
    ));
  }
}

/// @nodoc

class _$GetImage implements GetImage {
  const _$GetImage({this.image});

  @override
  final dynamic image;

  @override
  String toString() {
    return 'HomeEvent.getimage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImage &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$GetImageCopyWith<_$GetImage> get copyWith =>
      __$$GetImageCopyWithImpl<_$GetImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function(int index) deleteStudent,
    required TResult Function(StudentModel model, int index) editStudent,
    required TResult Function() getallstudents,
    required TResult Function(dynamic image) getimage,
  }) {
    return getimage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
  }) {
    return getimage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function(int index)? deleteStudent,
    TResult Function(StudentModel model, int index)? editStudent,
    TResult Function()? getallstudents,
    TResult Function(dynamic image)? getimage,
    required TResult orElse(),
  }) {
    if (getimage != null) {
      return getimage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(EditStudent value) editStudent,
    required TResult Function(Getallstudents value) getallstudents,
    required TResult Function(GetImage value) getimage,
  }) {
    return getimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
  }) {
    return getimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(EditStudent value)? editStudent,
    TResult Function(Getallstudents value)? getallstudents,
    TResult Function(GetImage value)? getimage,
    required TResult orElse(),
  }) {
    if (getimage != null) {
      return getimage(this);
    }
    return orElse();
  }
}

abstract class GetImage implements HomeEvent {
  const factory GetImage({final dynamic image}) = _$GetImage;

  dynamic get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetImageCopyWith<_$GetImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<StudentModel> get students => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({List<StudentModel> students, bool isError, dynamic image});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? students = freezed,
    Object? isError = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      students: students == freezed
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<StudentModel> students, bool isError, dynamic image});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? students = freezed,
    Object? isError = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_HomeState(
      students: students == freezed
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed ? _value.image : image,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required final List<StudentModel> students,
      required this.isError,
      this.image})
      : _students = students;

  final List<StudentModel> _students;
  @override
  List<StudentModel> get students {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  final bool isError;
  @override
  final dynamic image;

  @override
  String toString() {
    return 'HomeState(students: $students, isError: $isError, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_students),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<StudentModel> students,
      required final bool isError,
      final dynamic image}) = _$_HomeState;

  @override
  List<StudentModel> get students => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  dynamic get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
