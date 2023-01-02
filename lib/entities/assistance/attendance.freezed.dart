// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendance.dart';

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
  AsignatureId get asignature => throw _privateConstructorUsedError;
  String get day1 => throw _privateConstructorUsedError;
  String get day2 => throw _privateConstructorUsedError;
  String get day3 => throw _privateConstructorUsedError;
  String get day4 => throw _privateConstructorUsedError;
  String get day5 => throw _privateConstructorUsedError;

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
      {AsignatureId asignature,
      String day1,
      String day2,
      String day3,
      String day4,
      String day5});
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
    Object? asignature = null,
    Object? day1 = null,
    Object? day2 = null,
    Object? day3 = null,
    Object? day4 = null,
    Object? day5 = null,
  }) {
    return _then(_value.copyWith(
      asignature: null == asignature
          ? _value.asignature
          : asignature // ignore: cast_nullable_to_non_nullable
              as AsignatureId,
      day1: null == day1
          ? _value.day1
          : day1 // ignore: cast_nullable_to_non_nullable
              as String,
      day2: null == day2
          ? _value.day2
          : day2 // ignore: cast_nullable_to_non_nullable
              as String,
      day3: null == day3
          ? _value.day3
          : day3 // ignore: cast_nullable_to_non_nullable
              as String,
      day4: null == day4
          ? _value.day4
          : day4 // ignore: cast_nullable_to_non_nullable
              as String,
      day5: null == day5
          ? _value.day5
          : day5 // ignore: cast_nullable_to_non_nullable
              as String,
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
      {AsignatureId asignature,
      String day1,
      String day2,
      String day3,
      String day4,
      String day5});
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
    Object? asignature = null,
    Object? day1 = null,
    Object? day2 = null,
    Object? day3 = null,
    Object? day4 = null,
    Object? day5 = null,
  }) {
    return _then(_$_AttendanceDto(
      asignature: null == asignature
          ? _value.asignature
          : asignature // ignore: cast_nullable_to_non_nullable
              as AsignatureId,
      day1: null == day1
          ? _value.day1
          : day1 // ignore: cast_nullable_to_non_nullable
              as String,
      day2: null == day2
          ? _value.day2
          : day2 // ignore: cast_nullable_to_non_nullable
              as String,
      day3: null == day3
          ? _value.day3
          : day3 // ignore: cast_nullable_to_non_nullable
              as String,
      day4: null == day4
          ? _value.day4
          : day4 // ignore: cast_nullable_to_non_nullable
              as String,
      day5: null == day5
          ? _value.day5
          : day5 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceDto implements _AttendanceDto {
  _$_AttendanceDto(
      {required this.asignature,
      required this.day1,
      required this.day2,
      required this.day3,
      required this.day4,
      required this.day5});

  factory _$_AttendanceDto.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceDtoFromJson(json);

  @override
  final AsignatureId asignature;
  @override
  final String day1;
  @override
  final String day2;
  @override
  final String day3;
  @override
  final String day4;
  @override
  final String day5;

  @override
  String toString() {
    return 'AttendanceDto(asignature: $asignature, day1: $day1, day2: $day2, day3: $day3, day4: $day4, day5: $day5)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceDto &&
            (identical(other.asignature, asignature) ||
                other.asignature == asignature) &&
            (identical(other.day1, day1) || other.day1 == day1) &&
            (identical(other.day2, day2) || other.day2 == day2) &&
            (identical(other.day3, day3) || other.day3 == day3) &&
            (identical(other.day4, day4) || other.day4 == day4) &&
            (identical(other.day5, day5) || other.day5 == day5));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, asignature, day1, day2, day3, day4, day5);

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
      {required final AsignatureId asignature,
      required final String day1,
      required final String day2,
      required final String day3,
      required final String day4,
      required final String day5}) = _$_AttendanceDto;

  factory _AttendanceDto.fromJson(Map<String, dynamic> json) =
      _$_AttendanceDto.fromJson;

  @override
  AsignatureId get asignature;
  @override
  String get day1;
  @override
  String get day2;
  @override
  String get day3;
  @override
  String get day4;
  @override
  String get day5;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceDtoCopyWith<_$_AttendanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceDtoList _$AttendanceDtoListFromJson(Map<String, dynamic> json) {
  return _AttendanceDtoList.fromJson(json);
}

/// @nodoc
mixin _$AttendanceDtoList {
  List<AttendanceDto> get attendance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceDtoListCopyWith<AttendanceDtoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDtoListCopyWith<$Res> {
  factory $AttendanceDtoListCopyWith(
          AttendanceDtoList value, $Res Function(AttendanceDtoList) then) =
      _$AttendanceDtoListCopyWithImpl<$Res, AttendanceDtoList>;
  @useResult
  $Res call({List<AttendanceDto> attendance});
}

/// @nodoc
class _$AttendanceDtoListCopyWithImpl<$Res, $Val extends AttendanceDtoList>
    implements $AttendanceDtoListCopyWith<$Res> {
  _$AttendanceDtoListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendance = null,
  }) {
    return _then(_value.copyWith(
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceDtoListCopyWith<$Res>
    implements $AttendanceDtoListCopyWith<$Res> {
  factory _$$_AttendanceDtoListCopyWith(_$_AttendanceDtoList value,
          $Res Function(_$_AttendanceDtoList) then) =
      __$$_AttendanceDtoListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AttendanceDto> attendance});
}

/// @nodoc
class __$$_AttendanceDtoListCopyWithImpl<$Res>
    extends _$AttendanceDtoListCopyWithImpl<$Res, _$_AttendanceDtoList>
    implements _$$_AttendanceDtoListCopyWith<$Res> {
  __$$_AttendanceDtoListCopyWithImpl(
      _$_AttendanceDtoList _value, $Res Function(_$_AttendanceDtoList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendance = null,
  }) {
    return _then(_$_AttendanceDtoList(
      attendance: null == attendance
          ? _value._attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceDtoList implements _AttendanceDtoList {
  _$_AttendanceDtoList({required final List<AttendanceDto> attendance})
      : _attendance = attendance;

  factory _$_AttendanceDtoList.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceDtoListFromJson(json);

  final List<AttendanceDto> _attendance;
  @override
  List<AttendanceDto> get attendance {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendance);
  }

  @override
  String toString() {
    return 'AttendanceDtoList(attendance: $attendance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceDtoList &&
            const DeepCollectionEquality()
                .equals(other._attendance, _attendance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_attendance));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceDtoListCopyWith<_$_AttendanceDtoList> get copyWith =>
      __$$_AttendanceDtoListCopyWithImpl<_$_AttendanceDtoList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceDtoListToJson(
      this,
    );
  }
}

abstract class _AttendanceDtoList implements AttendanceDtoList {
  factory _AttendanceDtoList({required final List<AttendanceDto> attendance}) =
      _$_AttendanceDtoList;

  factory _AttendanceDtoList.fromJson(Map<String, dynamic> json) =
      _$_AttendanceDtoList.fromJson;

  @override
  List<AttendanceDto> get attendance;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceDtoListCopyWith<_$_AttendanceDtoList> get copyWith =>
      throw _privateConstructorUsedError;
}
