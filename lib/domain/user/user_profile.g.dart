// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopSpeedObj _$_$TopSpeedObjFromJson(Map<String, dynamic> json) {
  return _$TopSpeedObj(
    TopSpeedData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$TopSpeedObjToJson(_$TopSpeedObj instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$TopSpeedData _$_$TopSpeedDataFromJson(Map<String, dynamic> json) {
  return _$TopSpeedData(
    json['date'] as String,
    json['topspeed'] as String,
  );
}

Map<String, dynamic> _$_$TopSpeedDataToJson(_$TopSpeedData instance) =>
    <String, dynamic>{
      'date': instance.date,
      'topspeed': instance.topspeed,
    };

_$TopSpeedList _$_$TopSpeedListFromJson(Map<String, dynamic> json) {
  return _$TopSpeedList(
    users: (json['users'] as List<dynamic>?)
        ?.map((e) => TopSpeedObj.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$TopSpeedListToJson(_$TopSpeedList instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
