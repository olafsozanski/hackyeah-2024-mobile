import 'package:hackyeah_2024_mobile/data/address.dart';

class Company {
  Company(
      {required this.nip,
      required this.name,
      required this.startDate,
      required this.verificationYear,
      required this.address});

  String nip;
  String name;
  DateTime startDate;
  int verificationYear;
  Address address;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        nip: json["nip"],
        name: json["name"],
        startDate: json["startDate"],
        verificationYear: json["verificationYear"],
        address: Address.fromJson(json["address"]),
      );
}
