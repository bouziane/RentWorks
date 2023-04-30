class Tenant {
  final int id;
  final String name;
  final String email;
  final String phoneNumber;
  final String occupation;
  bool active;

  Tenant({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.occupation,
    required this.active,
  });
}
