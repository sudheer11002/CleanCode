// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataList _$DataListFromJson(Map<String, dynamic> json) => DataList(
      friendType: (json['friendType'] as List<dynamic>?)
          ?.map((e) => FriendTypeList.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodType: (json['foodType'] as List<dynamic>?)
          ?.map((e) => FoodTypeList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataListToJson(DataList instance) => <String, dynamic>{
      'friendType': instance.friendType,
      'foodType': instance.foodType,
    };

FriendTypeList _$FriendTypeListFromJson(Map<String, dynamic> json) =>
    FriendTypeList(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FriendTypeListToJson(FriendTypeList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

FoodTypeList _$FoodTypeListFromJson(Map<String, dynamic> json) => FoodTypeList(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FoodTypeListToJson(FoodTypeList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
