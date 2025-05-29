import 'dart:convert';

import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String role;
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

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      role: map['role'] as String,
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
