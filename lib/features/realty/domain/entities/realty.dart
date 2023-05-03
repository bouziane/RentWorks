class Realty {
  final bool available;
  final double price;
  final List<String>? amenities;
  final List<String>? photos;

  final String? description;
  final String id;
  final String? location;
  final String name;
  final String owner;

  Realty({
    this.amenities,
    required this.available,
    this.description,
    required this.id,
    this.location,
    required this.name,
    required this.owner,
    this.photos,
    required this.price,
  });
}
