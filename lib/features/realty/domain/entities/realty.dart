class Realty {
  final String id;
  final String name;
  final String description;
  final String location;
  final double price;

  bool available;
  final List<String> amenities;
  final String owner;
  final List<String> photos;

  Realty({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.price,
    required this.available,
    required this.amenities,
    required this.owner,
    required this.photos,
  });
}
