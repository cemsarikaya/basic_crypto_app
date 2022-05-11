import 'dart:io';

import 'package:basic_crypto_app/model/crypto_model.dart';
import 'package:dio/dio.dart';

abstract class ICryptoService {
  ICryptoService(this.dio);
  final Dio dio;

  Future<CryptoModel?> fetchResourceItem();
}

class CryptoService extends ICryptoService {
  CryptoService(Dio dio) : super(dio);

  @override
  Future<CryptoModel?> fetchResourceItem() async {
    final response = await dio.get('/markets', queryParameters: {
      'vs_currency': 'usd',
      'order': 'market_cap_desc',
      'per_page': '25',
      'page': '1',
      'sparkline': 'false'
    });

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return CryptoModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
