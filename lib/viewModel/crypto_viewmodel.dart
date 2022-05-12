import 'package:basic_crypto_app/model/crypto_model.dart';
import 'package:basic_crypto_app/product/constant/loading_state.dart';
import 'package:basic_crypto_app/service/crypto_service.dart';
import 'package:basic_crypto_app/view/crypto_view.dart';

import '../product/constant/service/project_dio.dart';

abstract class CryptoViewModel extends LoadingStatfull<CryptoView> with ProjectDioMixin {
  late final ICryptoService cryptoService;

  List<CryptoModel?> resources = [];
  @override
  void initState() {
    super.initState();
    cryptoService = CryptoService(service);
    fetch();
  }

  Future<void> fetch() async {
    changeLoading();
    resources = (await cryptoService.fetchResourceItem()) ?? [];
    changeLoading();
  }
}
