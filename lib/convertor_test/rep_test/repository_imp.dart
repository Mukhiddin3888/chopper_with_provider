

import 'package:chopper_with_provider/convertor_test/model/users.dart';
import 'package:chopper_with_provider/convertor_test/users_api.dart';

abstract class UserRepository{

  //Future<Either<UserFailure, UserModel>> getUser();
  Future<User?> getUser();

}

class UserRepositoryImpl implements UserRepository {

  final UserApiService userApiService;

  UserRepositoryImpl({ required this.userApiService});

  @override
  Future<User?> getUser() async {
    try{
      var responce = await userApiService.getUsers();
      return responce;
    }
    catch(e){
      return null;
    }
  }

}