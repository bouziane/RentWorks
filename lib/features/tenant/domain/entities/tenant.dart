class Tenant {
  int id;
  String name;
  String email;
  String phoneNumber;
  DateTime moveInDate;

  Tenant(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNumber,
      required this.moveInDate});
}
