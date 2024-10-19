import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String mapUrl;
  final List<String> tags;

  const Location({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.mapUrl,
    required this.tags,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        mapUrl: json['mapUrl'],
        tags: json['tags'],
      );

  @override
  List<Object?> get props => [id, name, description, imageUrl, mapUrl, tags];
}
