import 'dart:async';

import 'package:icti/models/models.dart';

import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<BaseResponse?> call(BaseRequest data) async {
    final res = await apiProvider.call('/api/login', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
  }
}
