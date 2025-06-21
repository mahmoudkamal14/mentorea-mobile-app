// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';

class UserModel {
  final String? id;
  final String? name;
  final String? email;
  final String? role;
  final String? image;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    this.image,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'role': role,
      'image': image,
    };
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'role': role,
      'image': image,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      role: map['role'] != null ? map['role'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }
}

UserModel? getCachedUserData() {
  final jsonString = CacheHelper.getData(key: CacheHelperKeys.userData);
  if (jsonString != null) {
    final jsonMap = jsonDecode(jsonString);
    return UserModel.fromJson(jsonMap);
  }
  return null;
}
