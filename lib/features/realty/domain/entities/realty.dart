class Realty {
  final bool available;
  final double price;
  final List<String> amenities;
  final List<String> photos;

  final String description;
  final String id;
  final String location;
  final String name;
  final String owner;

  Realty({
    required this.amenities,
    required this.available,
    required this.description,
    required this.id,
    required this.location,
    required this.name,
    required this.owner,
    required this.photos,
    required this.price,
  });
}
