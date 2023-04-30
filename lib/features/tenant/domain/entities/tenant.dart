class Tenant {
  final bool active;
  final String id;
  final String email;
  final String name;
  final String occupation;
  final String phoneNumber;

  Tenant({
    required this.active,
    required this.email,
    required this.id,
    required this.name,
    required this.occupation,
    required this.phoneNumber,
  });
}
