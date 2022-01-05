import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
abstract class TopSpeed with _$TopSpeed {
  const factory TopSpeed(TopSpeedData data) = TopSpeedObj;

  const factory TopSpeed.data(
    String date,
    String topspeed,
  ) = TopSpeedData;

  // factory UserProfile.empty() =>
  //     const UserProfileObj(UserData('', '', "", '', "", "", "", "", {}));
  const factory TopSpeed.list({@required List<TopSpeedObj>? users}) =
      TopSpeedList;
  factory TopSpeed.fromJson(Map<String, dynamic> json) =>
      _$TopSpeedFromJson(json);
}
