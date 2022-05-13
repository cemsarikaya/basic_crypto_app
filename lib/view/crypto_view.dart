import 'package:basic_crypto_app/model/crypto_model.dart';
import 'package:basic_crypto_app/product/constant/padding_items.dart';
import 'package:basic_crypto_app/product/constant/project_items.dart';
import 'package:basic_crypto_app/product/constant/service/project_dio.dart';
import 'package:basic_crypto_app/product/global/theme_notifier.dart';

import 'package:basic_crypto_app/service/crypto_service.dart';
import 'package:basic_crypto_app/viewModel/crypto_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
          appBar: AppBar(title: const Text(ProjectItems.projectName), actions: const [ThemeButton()]),
          body: Center(
            child: Column(
              children: [
                context.watch<CryptoProvider>().isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.black,
                      )
                    : Expanded(
                        child: RefreshIndicator(
                            onRefresh: () {
                              return context.read<CryptoProvider>().fetch();
                            },
                            child: _cryptoListView(context, context.watch<CryptoProvider>().resources)),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }

  ListView _cryptoListView(
    BuildContext context,
    List<CryptoModel> items,
  ) {
    double _nameTextSize = 18;
    double _priceTextSize = 18;
    double _imageSize = 50;
    return ListView.builder(
      itemCount: context.watch<CryptoProvider>().resources.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: PaddindUtility().paddingList,
          child: Card(
            child: Padding(
              padding: PaddindUtility().paddingCard,
              child: Row(children: [
                CachedNetworkImage(
                    imageUrl: items[index].image.toString(),
                    height: _imageSize,
                    width: _imageSize,
                    errorWidget: (context, url, error) => const SizedBox()),
                Padding(
                  padding: PaddindUtility().paddingHorizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].name.toString(),
                        style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: _nameTextSize),
                      ),
                      Padding(
                        padding: PaddindUtility().paddingTop,
                        child: Text(items[index].symbol.toString().toUpperCase(),
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey[500])),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$${items[index].currentPrice.toString()}',
                        style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: _priceTextSize),
                      ),
                      Padding(
                        padding: PaddindUtility().paddingTop,
                        child: Text(
                          '${items[index].priceChangePercentage24h.toString()}%',
                          style: TextStyle(
                              color: context.watch<CryptoProvider>().resources[index].priceChangePercentage24h! < 0
                                  ? Colors.red
                                  : Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.read<ThemeNotifer>().changeTheme();
        },
        icon: const Icon(Icons.dark_mode));
  }
}
