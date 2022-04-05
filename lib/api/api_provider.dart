import 'package:icti/api/base_provider.dart';
import 'package:icti/models/models.dart';
import 'package:get/get.dart';

class ApiProvider extends BaseProvider {
  Future<Response> call(String path, BaseRequest data) {
    return post(path, data.toJson());
  }
}
