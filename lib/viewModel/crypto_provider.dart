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
  }

  Future<void> fetch() async {
    _changeLoading();
    resources = (await cryptoService.fetchResourceItem()) ?? [];
    _changeLoading();
  }
}
