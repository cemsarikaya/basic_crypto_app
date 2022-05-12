import 'package:json_annotation/json_annotation.dart';

part 'crypto_model.g.dart';

@JsonSerializable()
class CryptoModel {
  String? id;
  String? symbol;
  String? name;
  String? image;
  dynamic currentPrice;
  dynamic marketCap;
  dynamic marketCapRank;
  dynamic fullyDilutedValuation;
  dynamic totalVolume;
  dynamic high24h;
  dynamic low24h;
  dynamic priceChange24h;
  dynamic priceChangePercentage24h;
  dynamic marketCapChange24h;
  dynamic marketCapChangePercentage24h;
  dynamic circulatingSupply;
  dynamic totalSupply;
  dynamic maxSupply;
  dynamic ath;
  dynamic athChangePercentage;
  String? athDate;
  dynamic atl;
  dynamic atlChangePercentage;
  String? atlDate;
  dynamic roi;
  String? lastUpdated;

  CryptoModel(
      {this.id,
      this.symbol,
      this.name,
      this.image,
      this.currentPrice,
      this.marketCap,
      this.marketCapRank,
      this.fullyDilutedValuation,
      this.totalVolume,
      this.high24h,
      this.low24h,
      this.priceChange24h,
      this.priceChangePercentage24h,
      this.marketCapChange24h,
      this.marketCapChangePercentage24h,
      this.circulatingSupply,
      this.totalSupply,
      this.maxSupply,
      this.ath,
      this.athChangePercentage,
      this.athDate,
      this.atl,
      this.atlChangePercentage,
      this.atlDate,
      this.roi,
      this.lastUpdated});

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return _$CryptoModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CryptoModelToJson(this);
  }
}
