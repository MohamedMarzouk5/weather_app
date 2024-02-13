import 'package:equatable/equatable.dart';

import 'current.dart';
import 'location.dart';

class Weather extends Equatable {
  final Location? location;
  final Current? current;

  const Weather({this.location, this.current});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        location: json['location'] == null
            ? null
            : Location.fromJson(json['location'] as Map<String, dynamic>),
        current: json['current'] == null
            ? null
            : Current.fromJson(json['current'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'location': location?.toJson(),
        'current': current?.toJson(),
      };

  @override
  List<Object?> get props => [location, current];
}
