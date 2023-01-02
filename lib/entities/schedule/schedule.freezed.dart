// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDto _$ScheduleDtoFromJson(Map<String, dynamic> json) {
  return _ScheduleDto.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDto {
  String get hour => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  List<String> get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDtoCopyWith<ScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDtoCopyWith<$Res> {
  factory $ScheduleDtoCopyWith(
          ScheduleDto value, $Res Function(ScheduleDto) then) =
      _$ScheduleDtoCopyWithImpl<$Res, ScheduleDto>;
  @useResult
  $Res call({String hour, String duration, List<String> day});
}

/// @nodoc
class _$ScheduleDtoCopyWithImpl<$Res, $Val extends ScheduleDto>
    implements $ScheduleDtoCopyWith<$Res> {
  _$ScheduleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? duration = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleDtoCopyWith<$Res>
    implements $ScheduleDtoCopyWith<$Res> {
  factory _$$_ScheduleDtoCopyWith(
          _$_ScheduleDto value, $Res Function(_$_ScheduleDto) then) =
      __$$_ScheduleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hour, String duration, List<String> day});
}

/// @nodoc
class __$$_ScheduleDtoCopyWithImpl<$Res>
    extends _$ScheduleDtoCopyWithImpl<$Res, _$_ScheduleDto>
    implements _$$_ScheduleDtoCopyWith<$Res> {
  __$$_ScheduleDtoCopyWithImpl(
      _$_ScheduleDto _value, $Res Function(_$_ScheduleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? duration = null,
    Object? day = null,
  }) {
    return _then(_$_ScheduleDto(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value._day
          : day // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDto implements _ScheduleDto {
  _$_ScheduleDto(
      {required this.hour,
      required this.duration,
      required final List<String> day})
      : _day = day;

  factory _$_ScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDtoFromJson(json);

  @override
  final String hour;
  @override
  final String duration;
  final List<String> _day;
  @override
  List<String> get day {
    if (_day is EqualUnmodifiableListView) return _day;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_day);
  }

  @override
  String toString() {
    return 'ScheduleDto(hour: $hour, duration: $duration, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDto &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._day, _day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hour, duration, const DeepCollectionEquality().hash(_day));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDtoCopyWith<_$_ScheduleDto> get copyWith =>
      __$$_ScheduleDtoCopyWithImpl<_$_ScheduleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDtoToJson(
      this,
    );
  }
}

abstract class _ScheduleDto implements ScheduleDto {
  factory _ScheduleDto(
      {required final String hour,
      required final String duration,
      required final List<String> day}) = _$_ScheduleDto;

  factory _ScheduleDto.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDto.fromJson;

  @override
  String get hour;
  @override
  String get duration;
  @override
  List<String> get day;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDtoCopyWith<_$_ScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
