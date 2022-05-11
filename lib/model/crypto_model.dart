import 'package:json_annotation/json_annotation.dart';

part 'crypto_model.g.dart';

@JsonSerializable()
class CryptoModel {
  CryptoModel({
    String? id,
    String? symbol,
    String? name,
    String? image,
    int? currentPrice,
    int? marketCap,
    int? marketCapRank,
    int? fullyDilutedValuation,
    int? totalVolume,
    int? high24h,
    int? low24h,
    double? priceChange24h,
    double? priceChangePercentage24h,
    double? marketCapChange24h,
    double? marketCapChangePercentage24h,
    double? circulatingSupply,
    double? totalSupply,
    double? maxSupply,
    int? ath,
    double? athChangePercentage,
    String? athDate,
    double? atl,
    double? atlChangePercentage,
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
  int? _currentPrice;
  int? _marketCap;
  int? _marketCapRank;
  int? _fullyDilutedValuation;
  int? _totalVolume;
  int? _high24h;
  int? _low24h;
  double? _priceChange24h;
  double? _priceChangePercentage24h;
  double? _marketCapChange24h;
  double? _marketCapChangePercentage24h;
  double? _circulatingSupply;
  double? _totalSupply;
  double? _maxSupply;
  int? _ath;
  double? _athChangePercentage;
  String? _athDate;
  double? _atl;
  double? _atlChangePercentage;
  String? _atlDate;
  dynamic _roi;
  String? _lastUpdated;
  CryptoModel copyWith({
    String? id,
    String? symbol,
    String? name,
    String? image,
    int? currentPrice,
    int? marketCap,
    int? marketCapRank,
    int? fullyDilutedValuation,
    int? totalVolume,
    int? high24h,
    int? low24h,
    double? priceChange24h,
    double? priceChangePercentage24h,
    double? marketCapChange24h,
    double? marketCapChangePercentage24h,
    double? circulatingSupply,
    double? totalSupply,
    double? maxSupply,
    int? ath,
    double? athChangePercentage,
    String? athDate,
    double? atl,
    double? atlChangePercentage,
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
  int? get currentPrice => _currentPrice;
  int? get marketCap => _marketCap;
  int? get marketCapRank => _marketCapRank;
  int? get fullyDilutedValuation => _fullyDilutedValuation;
  int? get totalVolume => _totalVolume;
  int? get high24h => _high24h;
  int? get low24h => _low24h;
  double? get priceChange24h => _priceChange24h;
  double? get priceChangePercentage24h => _priceChangePercentage24h;
  double? get marketCapChange24h => _marketCapChange24h;
  double? get marketCapChangePercentage24h => _marketCapChangePercentage24h;
  double? get circulatingSupply => _circulatingSupply;
  double? get totalSupply => _totalSupply;
  double? get maxSupply => _maxSupply;
  int? get ath => _ath;
  double? get athChangePercentage => _athChangePercentage;
  String? get athDate => _athDate;
  double? get atl => _atl;
  double? get atlChangePercentage => _atlChangePercentage;
  String? get atlDate => _atlDate;
  dynamic get roi => _roi;
  String? get lastUpdated => _lastUpdated;

  Map<String, dynamic> toJson() {
    return _$CryptoModelToJson(this);
  }
}
