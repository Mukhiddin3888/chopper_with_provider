
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users.g.dart';

abstract class User implements Built<User, UserBuilder> {

  int get id;
  String get name;
  String get email;

  User._();

  factory User([Function(UserBuilder b) updates]) = _$User;
  static Serializer<User> get serializer => _$userSerializer;

}