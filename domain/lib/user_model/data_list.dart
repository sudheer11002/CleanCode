
import 'package:json_annotation/json_annotation.dart';
part 'data_list.g.dart';


@JsonSerializable()
class DataList{
  List<FriendTypeList>? friendType;
  List<FoodTypeList>? foodType;


  DataList({this.friendType, this.foodType});

  factory DataList.fromJson(Map<String, dynamic> json) => _$DataListFromJson(json);

  Map<String, dynamic> toJson() => _$DataListToJson(this);

}

@JsonSerializable()
class FriendTypeList{

  String? id, name;

  FriendTypeList({
     this.id,
     this.name});


  factory FriendTypeList.fromJson(Map<String, dynamic> json) => _$FriendTypeListFromJson(json);

  Map<String, dynamic> toJson() => _$FriendTypeListToJson(this);

}


@JsonSerializable()
class FoodTypeList{

  String? id, name;

  FoodTypeList({
     this.id,
     this.name});



  factory FoodTypeList.fromJson(Map<String, dynamic> json) => _$FoodTypeListFromJson(json);

  Map<String, dynamic> toJson() => _$FoodTypeListToJson(this);


}