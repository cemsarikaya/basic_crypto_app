// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoModel _$CryptoModelFromJson(Map<String, dynamic> json) => CryptoModel(
      id: json['id'] as String?,
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      currentPrice: json['currentPrice'],
      marketCap: json['marketCap'],
      marketCapRank: json['marketCapRank'],
      fullyDilutedValuation: json['fullyDilutedValuation'],
      totalVolume: json['totalVolume'],
      high24h: json['high24h'],
      low24h: json['low24h'],
      priceChange24h: json['priceChange24h'],
      priceChangePercentage24h: json['priceChangePercentage24h'],
      marketCapChange24h: json['marketCapChange24h'],
      marketCapChangePercentage24h: json['marketCapChangePercentage24h'],
      circulatingSupply: json['circulatingSupply'],
      totalSupply: json['totalSupply'],
      maxSupply: json['maxSupply'],
      ath: json['ath'],
      athChangePercentage: json['athChangePercentage'],
      athDate: json['athDate'] as String?,
      atl: json['atl'],
      atlChangePercentage: json['atlChangePercentage'],
      atlDate: json['atlDate'] as String?,
      roi: json['roi'],
      lastUpdated: json['lastUpdated'] as String?,
    );

Map<String, dynamic> _$CryptoModelToJson(CryptoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'currentPrice': instance.currentPrice,
      'marketCap': instance.marketCap,
      'marketCapRank': instance.marketCapRank,
      'fullyDilutedValuation': instance.fullyDilutedValuation,
      'totalVolume': instance.totalVolume,
      'high24h': instance.high24h,
      'low24h': instance.low24h,
      'priceChange24h': instance.priceChange24h,
      'priceChangePercentage24h': instance.priceChangePercentage24h,
      'marketCapChange24h': instance.marketCapChange24h,
      'marketCapChangePercentage24h': instance.marketCapChangePercentage24h,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'maxSupply': instance.maxSupply,
      'ath': instance.ath,
      'athChangePercentage': instance.athChangePercentage,
      'athDate': instance.athDate,
      'atl': instance.atl,
      'atlChangePercentage': instance.atlChangePercentage,
      'atlDate': instance.atlDate,
      'roi': instance.roi,
      'lastUpdated': instance.lastUpdated,
    };
