// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopSpeed _$TopSpeedFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return TopSpeedObj.fromJson(json);
    case 'data':
      return TopSpeedData.fromJson(json);
    case 'list':
      return TopSpeedList.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$TopSpeedTearOff {
  const _$TopSpeedTearOff();

  TopSpeedObj call(TopSpeedData data) {
    return TopSpeedObj(
      data,
    );
  }

  TopSpeedData data(String date, String topspeed) {
    return TopSpeedData(
      date,
      topspeed,
    );
  }

  TopSpeedList list({List<TopSpeedObj>? users}) {
    return TopSpeedList(
      users: users,
    );
  }

  TopSpeed fromJson(Map<String, Object> json) {
    return TopSpeed.fromJson(json);
  }
}

/// @nodoc
const $TopSpeed = _$TopSpeedTearOff();

/// @nodoc
mixin _$TopSpeed {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TopSpeedData data) $default, {
    required TResult Function(String date, String topspeed) data,
    required TResult Function(List<TopSpeedObj>? users) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TopSpeedData data)? $default, {
    TResult Function(String date, String topspeed)? data,
    TResult Function(List<TopSpeedObj>? users)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TopSpeedObj value) $default, {
    required TResult Function(TopSpeedData value) data,
    required TResult Function(TopSpeedList value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TopSpeedObj value)? $default, {
    TResult Function(TopSpeedData value)? data,
    TResult Function(TopSpeedList value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSpeedCopyWith<$Res> {
  factory $TopSpeedCopyWith(TopSpeed value, $Res Function(TopSpeed) then) =
      _$TopSpeedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopSpeedCopyWithImpl<$Res> implements $TopSpeedCopyWith<$Res> {
  _$TopSpeedCopyWithImpl(this._value, this._then);

  final TopSpeed _value;
  // ignore: unused_field
  final $Res Function(TopSpeed) _then;
}

/// @nodoc
abstract class $TopSpeedObjCopyWith<$Res> {
  factory $TopSpeedObjCopyWith(
          TopSpeedObj value, $Res Function(TopSpeedObj) then) =
      _$TopSpeedObjCopyWithImpl<$Res>;
  $Res call({TopSpeedData data});
}

/// @nodoc
class _$TopSpeedObjCopyWithImpl<$Res> extends _$TopSpeedCopyWithImpl<$Res>
    implements $TopSpeedObjCopyWith<$Res> {
  _$TopSpeedObjCopyWithImpl(
      TopSpeedObj _value, $Res Function(TopSpeedObj) _then)
      : super(_value, (v) => _then(v as TopSpeedObj));

  @override
  TopSpeedObj get _value => super._value as TopSpeedObj;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(TopSpeedObj(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TopSpeedData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopSpeedObj implements TopSpeedObj {
  const _$TopSpeedObj(this.data);

  factory _$TopSpeedObj.fromJson(Map<String, dynamic> json) =>
      _$_$TopSpeedObjFromJson(json);

  @override
  final TopSpeedData data;

  @override
  String toString() {
    return 'TopSpeed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopSpeedObj &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $TopSpeedObjCopyWith<TopSpeedObj> get copyWith =>
      _$TopSpeedObjCopyWithImpl<TopSpeedObj>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TopSpeedData data) $default, {
    required TResult Function(String date, String topspeed) data,
    required TResult Function(List<TopSpeedObj>? users) list,
  }) {
    return $default(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TopSpeedData data)? $default, {
    TResult Function(String date, String topspeed)? data,
    TResult Function(List<TopSpeedObj>? users)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TopSpeedObj value) $default, {
    required TResult Function(TopSpeedData value) data,
    required TResult Function(TopSpeedList value) list,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TopSpeedObj value)? $default, {
    TResult Function(TopSpeedData value)? data,
    TResult Function(TopSpeedList value)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TopSpeedObjToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class TopSpeedObj implements TopSpeed {
  const factory TopSpeedObj(TopSpeedData data) = _$TopSpeedObj;

  factory TopSpeedObj.fromJson(Map<String, dynamic> json) =
      _$TopSpeedObj.fromJson;

  TopSpeedData get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopSpeedObjCopyWith<TopSpeedObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSpeedDataCopyWith<$Res> {
  factory $TopSpeedDataCopyWith(
          TopSpeedData value, $Res Function(TopSpeedData) then) =
      _$TopSpeedDataCopyWithImpl<$Res>;
  $Res call({String date, String topspeed});
}

/// @nodoc
class _$TopSpeedDataCopyWithImpl<$Res> extends _$TopSpeedCopyWithImpl<$Res>
    implements $TopSpeedDataCopyWith<$Res> {
  _$TopSpeedDataCopyWithImpl(
      TopSpeedData _value, $Res Function(TopSpeedData) _then)
      : super(_value, (v) => _then(v as TopSpeedData));

  @override
  TopSpeedData get _value => super._value as TopSpeedData;

  @override
  $Res call({
    Object? date = freezed,
    Object? topspeed = freezed,
  }) {
    return _then(TopSpeedData(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      topspeed == freezed
          ? _value.topspeed
          : topspeed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopSpeedData implements TopSpeedData {
  const _$TopSpeedData(this.date, this.topspeed);

  factory _$TopSpeedData.fromJson(Map<String, dynamic> json) =>
      _$_$TopSpeedDataFromJson(json);

  @override
  final String date;
  @override
  final String topspeed;

  @override
  String toString() {
    return 'TopSpeed.data(date: $date, topspeed: $topspeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopSpeedData &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.topspeed, topspeed) ||
                const DeepCollectionEquality()
                    .equals(other.topspeed, topspeed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(topspeed);

  @JsonKey(ignore: true)
  @override
  $TopSpeedDataCopyWith<TopSpeedData> get copyWith =>
      _$TopSpeedDataCopyWithImpl<TopSpeedData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TopSpeedData data) $default, {
    required TResult Function(String date, String topspeed) data,
    required TResult Function(List<TopSpeedObj>? users) list,
  }) {
    return data(date, topspeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TopSpeedData data)? $default, {
    TResult Function(String date, String topspeed)? data,
    TResult Function(List<TopSpeedObj>? users)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(date, topspeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TopSpeedObj value) $default, {
    required TResult Function(TopSpeedData value) data,
    required TResult Function(TopSpeedList value) list,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TopSpeedObj value)? $default, {
    TResult Function(TopSpeedData value)? data,
    TResult Function(TopSpeedList value)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TopSpeedDataToJson(this)..['runtimeType'] = 'data';
  }
}

abstract class TopSpeedData implements TopSpeed {
  const factory TopSpeedData(String date, String topspeed) = _$TopSpeedData;

  factory TopSpeedData.fromJson(Map<String, dynamic> json) =
      _$TopSpeedData.fromJson;

  String get date => throw _privateConstructorUsedError;
  String get topspeed => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopSpeedDataCopyWith<TopSpeedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSpeedListCopyWith<$Res> {
  factory $TopSpeedListCopyWith(
          TopSpeedList value, $Res Function(TopSpeedList) then) =
      _$TopSpeedListCopyWithImpl<$Res>;
  $Res call({List<TopSpeedObj>? users});
}

/// @nodoc
class _$TopSpeedListCopyWithImpl<$Res> extends _$TopSpeedCopyWithImpl<$Res>
    implements $TopSpeedListCopyWith<$Res> {
  _$TopSpeedListCopyWithImpl(
      TopSpeedList _value, $Res Function(TopSpeedList) _then)
      : super(_value, (v) => _then(v as TopSpeedList));

  @override
  TopSpeedList get _value => super._value as TopSpeedList;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(TopSpeedList(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<TopSpeedObj>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopSpeedList implements TopSpeedList {
  const _$TopSpeedList({this.users});

  factory _$TopSpeedList.fromJson(Map<String, dynamic> json) =>
      _$_$TopSpeedListFromJson(json);

  @override
  final List<TopSpeedObj>? users;

  @override
  String toString() {
    return 'TopSpeed.list(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopSpeedList &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  $TopSpeedListCopyWith<TopSpeedList> get copyWith =>
      _$TopSpeedListCopyWithImpl<TopSpeedList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TopSpeedData data) $default, {
    required TResult Function(String date, String topspeed) data,
    required TResult Function(List<TopSpeedObj>? users) list,
  }) {
    return list(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TopSpeedData data)? $default, {
    TResult Function(String date, String topspeed)? data,
    TResult Function(List<TopSpeedObj>? users)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TopSpeedObj value) $default, {
    required TResult Function(TopSpeedData value) data,
    required TResult Function(TopSpeedList value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TopSpeedObj value)? $default, {
    TResult Function(TopSpeedData value)? data,
    TResult Function(TopSpeedList value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TopSpeedListToJson(this)..['runtimeType'] = 'list';
  }
}

abstract class TopSpeedList implements TopSpeed {
  const factory TopSpeedList({List<TopSpeedObj>? users}) = _$TopSpeedList;

  factory TopSpeedList.fromJson(Map<String, dynamic> json) =
      _$TopSpeedList.fromJson;

  List<TopSpeedObj>? get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopSpeedListCopyWith<TopSpeedList> get copyWith =>
      throw _privateConstructorUsedError;
}
