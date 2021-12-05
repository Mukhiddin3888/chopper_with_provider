import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:chopper_with_provider/convertor_test/model/users.dart';


part 'serializers.g.dart';

@SerializersFor([User])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();