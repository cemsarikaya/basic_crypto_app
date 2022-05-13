import 'dart:async';

import 'package:basic_crypto_app/model/crypto_model.dart';
import 'package:basic_crypto_app/service/crypto_service.dart';
import 'package:flutter/cupertino.dart';

class CryptoProvider extends ChangeNotifier {
  final ICryptoService cryptoService;

  List<CryptoModel> resources = [];
  bool isLoading = false;

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  CryptoProvider(this.cryptoService) {
    fetch();
    refresh();
  }

  Future<void> fetch() async {
    _changeLoading();
    resources = (await cryptoService.fetchResourceItem()) ?? [];
    _changeLoading();
  }

  Future<void> refresh() async {
    Timer.periodic(const Duration(seconds: 30), (timer) async {
      resources = (await cryptoService.fetchResourceItem()) ?? [];
      notifyListeners();
    });
  }
}
