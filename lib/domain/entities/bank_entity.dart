class BankEntity {
  final String uuid;
  final bool isActive;
  final String name;
  final String? logoUrl;

  BankEntity({
    required this.uuid,
    required this.name,
    required this.isActive,
    this.logoUrl,
  });
}
