class Address {
  Address({
    required this.line1,
    required this.line2,
    required this.city,
    required this.zipCode,
  });

  String line1;
  String line2;
  String city;
  String zipCode;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        line1: json["streetName"],
        line2: json["streetNumber"],
        city: json["city"],
        zipCode: json["zipCode"],
      );
}
