import 'package:hackyeah_2024_mobile/data/analysis.dart';
import 'package:hackyeah_2024_mobile/data/companies.dart';

class CompaniesFullInfo {
  CompaniesFullInfo({
    required this.company,
    required this.analysis,
  });

  Company company;
  Analysis analysis;

  factory CompaniesFullInfo.fromJson(Map<String, dynamic> json) =>
      CompaniesFullInfo(
        company: json["company"],
        analysis: json["analysis"],
      );
}
