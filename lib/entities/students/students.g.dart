// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentsDto _$$_StudentsDtoFromJson(Map<String, dynamic> json) =>
    _$_StudentsDto(
      id: json['id'] as String,
      order: json['order'] as String,
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$_StudentsDtoToJson(_$_StudentsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'name': instance.name,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'gender': instance.gender,
    };
