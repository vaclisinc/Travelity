import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String id;
  final String name;
  final String reason;
  final String imageUrl;
  final String mapUrl;
  final List<String>? tags;

  const Location({
    required this.id,
    required this.name,
    required this.reason,
    required this.imageUrl,
    required this.mapUrl,
    required this.tags,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json['id'] ?? '',
        name: json['name'],
        reason: json['reason'],
        imageUrl: json['photos'],
        mapUrl: json['maps_url'],
        tags: List<String>.from(json['label'] ?? []),
      );

  @override
  List<Object?> get props => [id, name, reason, imageUrl, mapUrl, tags];
}
