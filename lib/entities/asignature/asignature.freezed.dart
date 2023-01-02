// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'asignature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AsignatureDto _$AsignatureDtoFromJson(Map<String, dynamic> json) {
  return _AsignatureDto.fromJson(json);
}

/// @nodoc
mixin _$AsignatureDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  ScheduleDto get schedule => throw _privateConstructorUsedError;
  GradesDto get grades => throw _privateConstructorUsedError;
  String get professor => throw _privateConstructorUsedError;
  List<AttendanceDto> get assistance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AsignatureDtoCopyWith<AsignatureDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsignatureDtoCopyWith<$Res> {
  factory $AsignatureDtoCopyWith(
          AsignatureDto value, $Res Function(AsignatureDto) then) =
      _$AsignatureDtoCopyWithImpl<$Res, AsignatureDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      ScheduleDto schedule,
      GradesDto grades,
      String professor,
      List<AttendanceDto> assistance});

  $ScheduleDtoCopyWith<$Res> get schedule;
  $GradesDtoCopyWith<$Res> get grades;
}

/// @nodoc
class _$AsignatureDtoCopyWithImpl<$Res, $Val extends AsignatureDto>
    implements $AsignatureDtoCopyWith<$Res> {
  _$AsignatureDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? schedule = null,
    Object? grades = null,
    Object? professor = null,
    Object? assistance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleDto,
      grades: null == grades
          ? _value.grades
          : grades // ignore: cast_nullable_to_non_nullable
              as GradesDto,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      assistance: null == assistance
          ? _value.assistance
          : assistance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleDtoCopyWith<$Res> get schedule {
    return $ScheduleDtoCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GradesDtoCopyWith<$Res> get grades {
    return $GradesDtoCopyWith<$Res>(_value.grades, (value) {
      return _then(_value.copyWith(grades: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AsignatureDtoCopyWith<$Res>
    implements $AsignatureDtoCopyWith<$Res> {
  factory _$$_AsignatureDtoCopyWith(
          _$_AsignatureDto value, $Res Function(_$_AsignatureDto) then) =
      __$$_AsignatureDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      ScheduleDto schedule,
      GradesDto grades,
      String professor,
      List<AttendanceDto> assistance});

  @override
  $ScheduleDtoCopyWith<$Res> get schedule;
  @override
  $GradesDtoCopyWith<$Res> get grades;
}

/// @nodoc
class __$$_AsignatureDtoCopyWithImpl<$Res>
    extends _$AsignatureDtoCopyWithImpl<$Res, _$_AsignatureDto>
    implements _$$_AsignatureDtoCopyWith<$Res> {
  __$$_AsignatureDtoCopyWithImpl(
      _$_AsignatureDto _value, $Res Function(_$_AsignatureDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? schedule = null,
    Object? grades = null,
    Object? professor = null,
    Object? assistance = null,
  }) {
    return _then(_$_AsignatureDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleDto,
      grades: null == grades
          ? _value.grades
          : grades // ignore: cast_nullable_to_non_nullable
              as GradesDto,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      assistance: null == assistance
          ? _value._assistance
          : assistance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AsignatureDto implements _AsignatureDto {
  _$_AsignatureDto(
      {required this.id,
      required this.title,
      required this.schedule,
      required this.grades,
      required this.professor,
      required final List<AttendanceDto> assistance})
      : _assistance = assistance;

  factory _$_AsignatureDto.fromJson(Map<String, dynamic> json) =>
      _$$_AsignatureDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final ScheduleDto schedule;
  @override
  final GradesDto grades;
  @override
  final String professor;
  final List<AttendanceDto> _assistance;
  @override
  List<AttendanceDto> get assistance {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assistance);
  }

  @override
  String toString() {
    return 'AsignatureDto(id: $id, title: $title, schedule: $schedule, grades: $grades, professor: $professor, assistance: $assistance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AsignatureDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.grades, grades) || other.grades == grades) &&
            (identical(other.professor, professor) ||
                other.professor == professor) &&
            const DeepCollectionEquality()
                .equals(other._assistance, _assistance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, schedule, grades,
      professor, const DeepCollectionEquality().hash(_assistance));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AsignatureDtoCopyWith<_$_AsignatureDto> get copyWith =>
      __$$_AsignatureDtoCopyWithImpl<_$_AsignatureDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AsignatureDtoToJson(
      this,
    );
  }
}

abstract class _AsignatureDto implements AsignatureDto {
  factory _AsignatureDto(
      {required final String id,
      required final String title,
      required final ScheduleDto schedule,
      required final GradesDto grades,
      required final String professor,
      required final List<AttendanceDto> assistance}) = _$_AsignatureDto;

  factory _AsignatureDto.fromJson(Map<String, dynamic> json) =
      _$_AsignatureDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  ScheduleDto get schedule;
  @override
  GradesDto get grades;
  @override
  String get professor;
  @override
  List<AttendanceDto> get assistance;
  @override
  @JsonKey(ignore: true)
  _$$_AsignatureDtoCopyWith<_$_AsignatureDto> get copyWith =>
      throw _privateConstructorUsedError;
}
