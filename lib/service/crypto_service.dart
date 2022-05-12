import 'dart:io';

import 'package:basic_crypto_app/model/crypto_model.dart';
import 'package:dio/dio.dart';

abstract class ICryptoService {
  ICryptoService(this.dio);
  final Dio dio;

  Future<List<CryptoModel>?> fetchResourceItem();
}

class CryptoService extends ICryptoService {
  CryptoService(Dio dio) : super(dio);

  @override
  Future<List<CryptoModel>?> fetchResourceItem() async {
    final response = await dio.get('/coins/markets',
        queryParameters: {'vs_currency': 'usd', 'per_page': '100', 'page': '1', 'sparkline': 'false'});

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is List) {
        return jsonBody.map((e) => CryptoModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}
