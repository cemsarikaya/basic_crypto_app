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
      currentPrice: json['currentPrice'] as num?,
      marketCap: json['marketCap'] as num?,
      marketCapRank: json['marketCapRank'] as num?,
      fullyDilutedValuation: json['fullyDilutedValuation'] as num?,
      totalVolume: json['totalVolume'] as num?,
      high24h: json['high24h'] as num?,
      low24h: json['low24h'] as num?,
      priceChange24h: json['priceChange24h'] as num?,
      priceChangePercentage24h: json['priceChangePercentage24h'] as num?,
      marketCapChange24h: json['marketCapChange24h'] as num?,
      marketCapChangePercentage24h:
          json['marketCapChangePercentage24h'] as num?,
      circulatingSupply: json['circulatingSupply'] as num?,
      totalSupply: json['totalSupply'] as num?,
      maxSupply: json['maxSupply'] as num?,
      ath: json['ath'] as num?,
      athChangePercentage: json['athChangePercentage'] as num?,
      athDate: json['athDate'] as String?,
      atl: json['atl'] as num?,
      atlChangePercentage: json['atlChangePercentage'] as num?,
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
