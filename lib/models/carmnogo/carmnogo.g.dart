// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carmnogo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarMnogoImpl _$$CarMnogoImplFromJson(Map<String, dynamic> json) =>
    _$CarMnogoImpl(
      (json['cars'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CarMnogoImplToJson(_$CarMnogoImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
