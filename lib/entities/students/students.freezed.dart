// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'students.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentsDto _$StudentsDtoFromJson(Map<String, dynamic> json) {
  return _StudentsDto.fromJson(json);
}

/// @nodoc
mixin _$StudentsDto {
  String get id => throw _privateConstructorUsedError;
  String get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentsDtoCopyWith<StudentsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentsDtoCopyWith<$Res> {
  factory $StudentsDtoCopyWith(
          StudentsDto value, $Res Function(StudentsDto) then) =
      _$StudentsDtoCopyWithImpl<$Res, StudentsDto>;
  @useResult
  $Res call(
      {String id,
      String order,
      String name,
      String lastName,
      String phone,
      String email,
      String gender});
}

/// @nodoc
class _$StudentsDtoCopyWithImpl<$Res, $Val extends StudentsDto>
    implements $StudentsDtoCopyWith<$Res> {
  _$StudentsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? name = null,
    Object? lastName = null,
    Object? phone = null,
    Object? email = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentsDtoCopyWith<$Res>
    implements $StudentsDtoCopyWith<$Res> {
  factory _$$_StudentsDtoCopyWith(
          _$_StudentsDto value, $Res Function(_$_StudentsDto) then) =
      __$$_StudentsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String order,
      String name,
      String lastName,
      String phone,
      String email,
      String gender});
}

/// @nodoc
class __$$_StudentsDtoCopyWithImpl<$Res>
    extends _$StudentsDtoCopyWithImpl<$Res, _$_StudentsDto>
    implements _$$_StudentsDtoCopyWith<$Res> {
  __$$_StudentsDtoCopyWithImpl(
      _$_StudentsDto _value, $Res Function(_$_StudentsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? name = null,
    Object? lastName = null,
    Object? phone = null,
    Object? email = null,
    Object? gender = null,
  }) {
    return _then(_$_StudentsDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentsDto implements _StudentsDto {
  _$_StudentsDto(
      {required this.id,
      required this.order,
      required this.name,
      required this.lastName,
      required this.phone,
      required this.email,
      required this.gender});

  factory _$_StudentsDto.fromJson(Map<String, dynamic> json) =>
      _$$_StudentsDtoFromJson(json);

  @override
  final String id;
  @override
  final String order;
  @override
  final String name;
  @override
  final String lastName;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String gender;

  @override
  String toString() {
    return 'StudentsDto(id: $id, order: $order, name: $name, lastName: $lastName, phone: $phone, email: $email, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentsDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, order, name, lastName, phone, email, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentsDtoCopyWith<_$_StudentsDto> get copyWith =>
      __$$_StudentsDtoCopyWithImpl<_$_StudentsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentsDtoToJson(
      this,
    );
  }
}

abstract class _StudentsDto implements StudentsDto {
  factory _StudentsDto(
      {required final String id,
      required final String order,
      required final String name,
      required final String lastName,
      required final String phone,
      required final String email,
      required final String gender}) = _$_StudentsDto;

  factory _StudentsDto.fromJson(Map<String, dynamic> json) =
      _$_StudentsDto.fromJson;

  @override
  String get id;
  @override
  String get order;
  @override
  String get name;
  @override
  String get lastName;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get gender;
  @override
  @JsonKey(ignore: true)
  _$$_StudentsDtoCopyWith<_$_StudentsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
