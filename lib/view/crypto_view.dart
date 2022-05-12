import 'package:basic_crypto_app/model/crypto_model.dart';
import 'package:basic_crypto_app/product/constant/service/project_dio.dart';
import 'package:basic_crypto_app/service/crypto_service.dart';
import 'package:basic_crypto_app/viewModel/crypto_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CryptoView extends StatefulWidget {
  const CryptoView({Key? key}) : super(key: key);
  @override
  State<CryptoView> createState() => _CryptoViewState();
}

class _CryptoViewState extends State<CryptoView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CryptoProvider(CryptoService(service)),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              children: [
                context.watch<CryptoProvider>().isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.black,
                      )
                    : Expanded(child: _cryptoListView(context, context.watch<CryptoProvider>().resources)),
              ],
            ),
          ),
        );
      },
    );
  }

  ListView _cryptoListView(BuildContext context, List<CryptoModel> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(items[index].id.toString());
      },
    );
  }
}
