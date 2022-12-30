// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceDto _$AttendanceDtoFromJson(Map<String, dynamic> json) {
  return _AttendanceDto.fromJson(json);
}

/// @nodoc
mixin _$AttendanceDto {
  String get assignatureId => throw _privateConstructorUsedError;
  String get stundentId => throw _privateConstructorUsedError;
  bool get isHere => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceDtoCopyWith<AttendanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDtoCopyWith<$Res> {
  factory $AttendanceDtoCopyWith(
          AttendanceDto value, $Res Function(AttendanceDto) then) =
      _$AttendanceDtoCopyWithImpl<$Res, AttendanceDto>;
  @useResult
  $Res call(
      {String assignatureId, String stundentId, bool isHere, DateTime date});
}

/// @nodoc
class _$AttendanceDtoCopyWithImpl<$Res, $Val extends AttendanceDto>
    implements $AttendanceDtoCopyWith<$Res> {
  _$AttendanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignatureId = null,
    Object? stundentId = null,
    Object? isHere = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      assignatureId: null == assignatureId
          ? _value.assignatureId
          : assignatureId // ignore: cast_nullable_to_non_nullable
              as String,
      stundentId: null == stundentId
          ? _value.stundentId
          : stundentId // ignore: cast_nullable_to_non_nullable
              as String,
      isHere: null == isHere
          ? _value.isHere
          : isHere // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceDtoCopyWith<$Res>
    implements $AttendanceDtoCopyWith<$Res> {
  factory _$$_AttendanceDtoCopyWith(
          _$_AttendanceDto value, $Res Function(_$_AttendanceDto) then) =
      __$$_AttendanceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String assignatureId, String stundentId, bool isHere, DateTime date});
}

/// @nodoc
class __$$_AttendanceDtoCopyWithImpl<$Res>
    extends _$AttendanceDtoCopyWithImpl<$Res, _$_AttendanceDto>
    implements _$$_AttendanceDtoCopyWith<$Res> {
  __$$_AttendanceDtoCopyWithImpl(
      _$_AttendanceDto _value, $Res Function(_$_AttendanceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignatureId = null,
    Object? stundentId = null,
    Object? isHere = null,
    Object? date = null,
  }) {
    return _then(_$_AttendanceDto(
      assignatureId: null == assignatureId
          ? _value.assignatureId
          : assignatureId // ignore: cast_nullable_to_non_nullable
              as String,
      stundentId: null == stundentId
          ? _value.stundentId
          : stundentId // ignore: cast_nullable_to_non_nullable
              as String,
      isHere: null == isHere
          ? _value.isHere
          : isHere // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceDto implements _AttendanceDto {
  _$_AttendanceDto(
      {required this.assignatureId,
      required this.stundentId,
      required this.isHere,
      required this.date});

  factory _$_AttendanceDto.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceDtoFromJson(json);

  @override
  final String assignatureId;
  @override
  final String stundentId;
  @override
  final bool isHere;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'AttendanceDto(assignatureId: $assignatureId, stundentId: $stundentId, isHere: $isHere, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceDto &&
            (identical(other.assignatureId, assignatureId) ||
                other.assignatureId == assignatureId) &&
            (identical(other.stundentId, stundentId) ||
                other.stundentId == stundentId) &&
            (identical(other.isHere, isHere) || other.isHere == isHere) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, assignatureId, stundentId, isHere, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceDtoCopyWith<_$_AttendanceDto> get copyWith =>
      __$$_AttendanceDtoCopyWithImpl<_$_AttendanceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceDtoToJson(
      this,
    );
  }
}

abstract class _AttendanceDto implements AttendanceDto {
  factory _AttendanceDto(
      {required final String assignatureId,
      required final String stundentId,
      required final bool isHere,
      required final DateTime date}) = _$_AttendanceDto;

  factory _AttendanceDto.fromJson(Map<String, dynamic> json) =
      _$_AttendanceDto.fromJson;

  @override
  String get assignatureId;
  @override
  String get stundentId;
  @override
  bool get isHere;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceDtoCopyWith<_$_AttendanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
