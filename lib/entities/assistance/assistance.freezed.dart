// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assistance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssistanceDto _$AssistanceDtoFromJson(Map<String, dynamic> json) {
  return _AssistanceDto.fromJson(json);
}

/// @nodoc
mixin _$AssistanceDto {
  String get assignatureId => throw _privateConstructorUsedError;
  StudentsDto get student => throw _privateConstructorUsedError;
  bool get isHere => throw _privateConstructorUsedError;
  DateTime get fecha => throw _privateConstructorUsedError;
  String get schedule => throw _privateConstructorUsedError;
  String get professor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssistanceDtoCopyWith<AssistanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistanceDtoCopyWith<$Res> {
  factory $AssistanceDtoCopyWith(
          AssistanceDto value, $Res Function(AssistanceDto) then) =
      _$AssistanceDtoCopyWithImpl<$Res, AssistanceDto>;
  @useResult
  $Res call(
      {String assignatureId,
      StudentsDto student,
      bool isHere,
      DateTime fecha,
      String schedule,
      String professor});

  $StudentsDtoCopyWith<$Res> get student;
}

/// @nodoc
class _$AssistanceDtoCopyWithImpl<$Res, $Val extends AssistanceDto>
    implements $AssistanceDtoCopyWith<$Res> {
  _$AssistanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignatureId = null,
    Object? student = null,
    Object? isHere = null,
    Object? fecha = null,
    Object? schedule = null,
    Object? professor = null,
  }) {
    return _then(_value.copyWith(
      assignatureId: null == assignatureId
          ? _value.assignatureId
          : assignatureId // ignore: cast_nullable_to_non_nullable
              as String,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentsDto,
      isHere: null == isHere
          ? _value.isHere
          : isHere // ignore: cast_nullable_to_non_nullable
              as bool,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentsDtoCopyWith<$Res> get student {
    return $StudentsDtoCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AssistanceDtoCopyWith<$Res>
    implements $AssistanceDtoCopyWith<$Res> {
  factory _$$_AssistanceDtoCopyWith(
          _$_AssistanceDto value, $Res Function(_$_AssistanceDto) then) =
      __$$_AssistanceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String assignatureId,
      StudentsDto student,
      bool isHere,
      DateTime fecha,
      String schedule,
      String professor});

  @override
  $StudentsDtoCopyWith<$Res> get student;
}

/// @nodoc
class __$$_AssistanceDtoCopyWithImpl<$Res>
    extends _$AssistanceDtoCopyWithImpl<$Res, _$_AssistanceDto>
    implements _$$_AssistanceDtoCopyWith<$Res> {
  __$$_AssistanceDtoCopyWithImpl(
      _$_AssistanceDto _value, $Res Function(_$_AssistanceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignatureId = null,
    Object? student = null,
    Object? isHere = null,
    Object? fecha = null,
    Object? schedule = null,
    Object? professor = null,
  }) {
    return _then(_$_AssistanceDto(
      assignatureId: null == assignatureId
          ? _value.assignatureId
          : assignatureId // ignore: cast_nullable_to_non_nullable
              as String,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentsDto,
      isHere: null == isHere
          ? _value.isHere
          : isHere // ignore: cast_nullable_to_non_nullable
              as bool,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssistanceDto implements _AssistanceDto {
  _$_AssistanceDto(
      {required this.assignatureId,
      required this.student,
      required this.isHere,
      required this.fecha,
      required this.schedule,
      required this.professor});

  factory _$_AssistanceDto.fromJson(Map<String, dynamic> json) =>
      _$$_AssistanceDtoFromJson(json);

  @override
  final String assignatureId;
  @override
  final StudentsDto student;
  @override
  final bool isHere;
  @override
  final DateTime fecha;
  @override
  final String schedule;
  @override
  final String professor;

  @override
  String toString() {
    return 'AssistanceDto(assignatureId: $assignatureId, student: $student, isHere: $isHere, fecha: $fecha, schedule: $schedule, professor: $professor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssistanceDto &&
            (identical(other.assignatureId, assignatureId) ||
                other.assignatureId == assignatureId) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.isHere, isHere) || other.isHere == isHere) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.professor, professor) ||
                other.professor == professor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, assignatureId, student, isHere, fecha, schedule, professor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssistanceDtoCopyWith<_$_AssistanceDto> get copyWith =>
      __$$_AssistanceDtoCopyWithImpl<_$_AssistanceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssistanceDtoToJson(
      this,
    );
  }
}

abstract class _AssistanceDto implements AssistanceDto {
  factory _AssistanceDto(
      {required final String assignatureId,
      required final StudentsDto student,
      required final bool isHere,
      required final DateTime fecha,
      required final String schedule,
      required final String professor}) = _$_AssistanceDto;

  factory _AssistanceDto.fromJson(Map<String, dynamic> json) =
      _$_AssistanceDto.fromJson;

  @override
  String get assignatureId;
  @override
  StudentsDto get student;
  @override
  bool get isHere;
  @override
  DateTime get fecha;
  @override
  String get schedule;
  @override
  String get professor;
  @override
  @JsonKey(ignore: true)
  _$$_AssistanceDtoCopyWith<_$_AssistanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
