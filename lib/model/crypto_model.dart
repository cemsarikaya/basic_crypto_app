import 'package:json_annotation/json_annotation.dart';

part 'crypto_model.g.dart';

@JsonSerializable()
class CryptoModel {
  CryptoModel({
    String? id,
    String? symbol,
    String? name,
    String? image,
    num? currentPrice,
    num? marketCap,
    num? marketCapRank,
    num? fullyDilutedValuation,
    num? totalVolume,
    num? high24h,
    num? low24h,
    num? priceChange24h,
    num? priceChangePercentage24h,
    num? marketCapChange24h,
    num? marketCapChangePercentage24h,
    num? circulatingSupply,
    num? totalSupply,
    num? maxSupply,
    num? ath,
    num? athChangePercentage,
    String? athDate,
    num? atl,
    num? atlChangePercentage,
    String? atlDate,
    dynamic roi,
    String? lastUpdated,
  }) {
    _id = id;
    _symbol = symbol;
    _name = name;
    _image = image;
    _currentPrice = currentPrice;
    _marketCap = marketCap;
    _marketCapRank = marketCapRank;
    _fullyDilutedValuation = fullyDilutedValuation;
    _totalVolume = totalVolume;
    _high24h = high24h;
    _low24h = low24h;
    _priceChange24h = priceChange24h;
    _priceChangePercentage24h = priceChangePercentage24h;
    _marketCapChange24h = marketCapChange24h;
    _marketCapChangePercentage24h = marketCapChangePercentage24h;
    _circulatingSupply = circulatingSupply;
    _totalSupply = totalSupply;
    _maxSupply = maxSupply;
    _ath = ath;
    _athChangePercentage = athChangePercentage;
    _athDate = athDate;
    _atl = atl;
    _atlChangePercentage = atlChangePercentage;
    _atlDate = atlDate;
    _roi = roi;
    _lastUpdated = lastUpdated;
  }

  factory CryptoModel.fromJson(dynamic json) {
    return _$CryptoModelFromJson(json);
  }
  String? _id;
  String? _symbol;
  String? _name;
  String? _image;
  num? _currentPrice;
  num? _marketCap;
  num? _marketCapRank;
  num? _fullyDilutedValuation;
  num? _totalVolume;
  num? _high24h;
  num? _low24h;
  num? _priceChange24h;
  num? _priceChangePercentage24h;
  num? _marketCapChange24h;
  num? _marketCapChangePercentage24h;
  num? _circulatingSupply;
  num? _totalSupply;
  num? _maxSupply;
  num? _ath;
  num? _athChangePercentage;
  String? _athDate;
  num? _atl;
  num? _atlChangePercentage;
  String? _atlDate;
  dynamic _roi;
  String? _lastUpdated;
  CryptoModel copyWith({
    String? id,
    String? symbol,
    String? name,
    String? image,
    num? currentPrice,
    num? marketCap,
    num? marketCapRank,
    num? fullyDilutedValuation,
    num? totalVolume,
    num? high24h,
    num? low24h,
    num? priceChange24h,
    num? priceChangePercentage24h,
    num? marketCapChange24h,
    num? marketCapChangePercentage24h,
    num? circulatingSupply,
    num? totalSupply,
    num? maxSupply,
    num? ath,
    num? athChangePercentage,
    String? athDate,
    num? atl,
    num? atlChangePercentage,
    String? atlDate,
    dynamic roi,
    String? lastUpdated,
  }) =>
      CryptoModel(
        id: id ?? _id,
        symbol: symbol ?? _symbol,
        name: name ?? _name,
        image: image ?? _image,
        currentPrice: currentPrice ?? _currentPrice,
        marketCap: marketCap ?? _marketCap,
        marketCapRank: marketCapRank ?? _marketCapRank,
        fullyDilutedValuation: fullyDilutedValuation ?? _fullyDilutedValuation,
        totalVolume: totalVolume ?? _totalVolume,
        high24h: high24h ?? _high24h,
        low24h: low24h ?? _low24h,
        priceChange24h: priceChange24h ?? _priceChange24h,
        priceChangePercentage24h: priceChangePercentage24h ?? _priceChangePercentage24h,
        marketCapChange24h: marketCapChange24h ?? _marketCapChange24h,
        marketCapChangePercentage24h: marketCapChangePercentage24h ?? _marketCapChangePercentage24h,
        circulatingSupply: circulatingSupply ?? _circulatingSupply,
        totalSupply: totalSupply ?? _totalSupply,
        maxSupply: maxSupply ?? _maxSupply,
        ath: ath ?? _ath,
        athChangePercentage: athChangePercentage ?? _athChangePercentage,
        athDate: athDate ?? _athDate,
        atl: atl ?? _atl,
        atlChangePercentage: atlChangePercentage ?? _atlChangePercentage,
        atlDate: atlDate ?? _atlDate,
        roi: roi ?? _roi,
        lastUpdated: lastUpdated ?? _lastUpdated,
      );
  String? get id => _id;
  String? get symbol => _symbol;
  String? get name => _name;
  String? get image => _image;
  num? get currentPrice => _currentPrice;
  num? get marketCap => _marketCap;
  num? get marketCapRank => _marketCapRank;
  num? get fullyDilutedValuation => _fullyDilutedValuation;
  num? get totalVolume => _totalVolume;
  num? get high24h => _high24h;
  num? get low24h => _low24h;
  num? get priceChange24h => _priceChange24h;
  num? get priceChangePercentage24h => _priceChangePercentage24h;
  num? get marketCapChange24h => _marketCapChange24h;
  num? get marketCapChangePercentage24h => _marketCapChangePercentage24h;
  num? get circulatingSupply => _circulatingSupply;
  num? get totalSupply => _totalSupply;
  num? get maxSupply => _maxSupply;
  num? get ath => _ath;
  num? get athChangePercentage => _athChangePercentage;
  String? get athDate => _athDate;
  num? get atl => _atl;
  num? get atlChangePercentage => _atlChangePercentage;
  String? get atlDate => _atlDate;
  dynamic get roi => _roi;
  String? get lastUpdated => _lastUpdated;

  Map<String, dynamic> toJson() {
    return _$CryptoModelToJson(this);
  }
}
