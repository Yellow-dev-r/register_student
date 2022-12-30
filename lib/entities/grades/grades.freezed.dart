// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grades.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GradesDto _$GradesDtoFromJson(Map<String, dynamic> json) {
  return _GradesDto.fromJson(json);
}

/// @nodoc
mixin _$GradesDto {
  String get firstTerm => throw _privateConstructorUsedError;
  String get midTerm => throw _privateConstructorUsedError;
  String get finalTerm => throw _privateConstructorUsedError;
  String get alphabeticGrade => throw _privateConstructorUsedError;
  String get average => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradesDtoCopyWith<GradesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradesDtoCopyWith<$Res> {
  factory $GradesDtoCopyWith(GradesDto value, $Res Function(GradesDto) then) =
      _$GradesDtoCopyWithImpl<$Res, GradesDto>;
  @useResult
  $Res call(
      {String firstTerm,
      String midTerm,
      String finalTerm,
      String alphabeticGrade,
      String average});
}

/// @nodoc
class _$GradesDtoCopyWithImpl<$Res, $Val extends GradesDto>
    implements $GradesDtoCopyWith<$Res> {
  _$GradesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstTerm = null,
    Object? midTerm = null,
    Object? finalTerm = null,
    Object? alphabeticGrade = null,
    Object? average = null,
  }) {
    return _then(_value.copyWith(
      firstTerm: null == firstTerm
          ? _value.firstTerm
          : firstTerm // ignore: cast_nullable_to_non_nullable
              as String,
      midTerm: null == midTerm
          ? _value.midTerm
          : midTerm // ignore: cast_nullable_to_non_nullable
              as String,
      finalTerm: null == finalTerm
          ? _value.finalTerm
          : finalTerm // ignore: cast_nullable_to_non_nullable
              as String,
      alphabeticGrade: null == alphabeticGrade
          ? _value.alphabeticGrade
          : alphabeticGrade // ignore: cast_nullable_to_non_nullable
              as String,
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GradesDtoCopyWith<$Res> implements $GradesDtoCopyWith<$Res> {
  factory _$$_GradesDtoCopyWith(
          _$_GradesDto value, $Res Function(_$_GradesDto) then) =
      __$$_GradesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstTerm,
      String midTerm,
      String finalTerm,
      String alphabeticGrade,
      String average});
}

/// @nodoc
class __$$_GradesDtoCopyWithImpl<$Res>
    extends _$GradesDtoCopyWithImpl<$Res, _$_GradesDto>
    implements _$$_GradesDtoCopyWith<$Res> {
  __$$_GradesDtoCopyWithImpl(
      _$_GradesDto _value, $Res Function(_$_GradesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstTerm = null,
    Object? midTerm = null,
    Object? finalTerm = null,
    Object? alphabeticGrade = null,
    Object? average = null,
  }) {
    return _then(_$_GradesDto(
      firstTerm: null == firstTerm
          ? _value.firstTerm
          : firstTerm // ignore: cast_nullable_to_non_nullable
              as String,
      midTerm: null == midTerm
          ? _value.midTerm
          : midTerm // ignore: cast_nullable_to_non_nullable
              as String,
      finalTerm: null == finalTerm
          ? _value.finalTerm
          : finalTerm // ignore: cast_nullable_to_non_nullable
              as String,
      alphabeticGrade: null == alphabeticGrade
          ? _value.alphabeticGrade
          : alphabeticGrade // ignore: cast_nullable_to_non_nullable
              as String,
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GradesDto implements _GradesDto {
  _$_GradesDto(
      {required this.firstTerm,
      required this.midTerm,
      required this.finalTerm,
      required this.alphabeticGrade,
      required this.average});

  factory _$_GradesDto.fromJson(Map<String, dynamic> json) =>
      _$$_GradesDtoFromJson(json);

  @override
  final String firstTerm;
  @override
  final String midTerm;
  @override
  final String finalTerm;
  @override
  final String alphabeticGrade;
  @override
  final String average;

  @override
  String toString() {
    return 'GradesDto(firstTerm: $firstTerm, midTerm: $midTerm, finalTerm: $finalTerm, alphabeticGrade: $alphabeticGrade, average: $average)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GradesDto &&
            (identical(other.firstTerm, firstTerm) ||
                other.firstTerm == firstTerm) &&
            (identical(other.midTerm, midTerm) || other.midTerm == midTerm) &&
            (identical(other.finalTerm, finalTerm) ||
                other.finalTerm == finalTerm) &&
            (identical(other.alphabeticGrade, alphabeticGrade) ||
                other.alphabeticGrade == alphabeticGrade) &&
            (identical(other.average, average) || other.average == average));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstTerm, midTerm, finalTerm, alphabeticGrade, average);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradesDtoCopyWith<_$_GradesDto> get copyWith =>
      __$$_GradesDtoCopyWithImpl<_$_GradesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GradesDtoToJson(
      this,
    );
  }
}

abstract class _GradesDto implements GradesDto {
  factory _GradesDto(
      {required final String firstTerm,
      required final String midTerm,
      required final String finalTerm,
      required final String alphabeticGrade,
      required final String average}) = _$_GradesDto;

  factory _GradesDto.fromJson(Map<String, dynamic> json) =
      _$_GradesDto.fromJson;

  @override
  String get firstTerm;
  @override
  String get midTerm;
  @override
  String get finalTerm;
  @override
  String get alphabeticGrade;
  @override
  String get average;
  @override
  @JsonKey(ignore: true)
  _$$_GradesDtoCopyWith<_$_GradesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
