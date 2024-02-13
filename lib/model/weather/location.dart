import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String? name;
  final String? region;
  final String? country;
  final String? localtime;

  const Location({
    this.name,
    this.region,
    this.country,
    this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json['name'] as String?,
        region: json['region'] as String?,
        country: json['country'] as String?,
        localtime: json['localtime'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'region': region,
        'country': country,
        'localtime': localtime,
      };

  @override
  List<Object?> get props {
    return [
      name,
      region,
      country,
      localtime,
    ];
  }
}
