





import 'package:chopper/chopper.dart';

part 'users_api.chopper.dart';

@ChopperApi(baseUrl: '/users')
abstract  class UserApiService extends ChopperService{

  @Get()
  Future<Response> getUsers();



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
      converter: const JsonConverter(),
    );

    return _$UserApiService(client);

  }


}