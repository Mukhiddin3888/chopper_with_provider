





import 'package:chopper/chopper.dart';
import 'package:chopper_with_provider/convertor_test/built_value_converter.dart';
import 'package:chopper_with_provider/convertor_test/model/users.dart';

part 'users_api.chopper.dart';

@ChopperApi(baseUrl: '/users')
abstract  class UserApiService extends ChopperService{

  @Get()
  Future<User> getUsers();



  static UserApiService create(){

    final client = ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [
        _$UserApiService(),
      ],
      interceptors: [
        HttpLoggingInterceptor(),
        CurlInterceptor()
      ],
      converter: BuiltValueConverter(),
    );

    return _$UserApiService(client);

  }


}