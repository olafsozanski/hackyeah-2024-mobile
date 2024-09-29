import 'package:dio/dio.dart';
import 'package:hackyeah_2024_mobile/data/companies_full_info.dart';

var baseUrl = "http://57.128.201.37:3000/";

var dio = Dio(BaseOptions(
  baseUrl: baseUrl,
));

Future<CompaniesFullInfo> getCompany({required String nip}) async {
  Response companyData = await dio.post('/companies/by-nip/$nip/analyze');
  return CompaniesFullInfo.fromJson(companyData.data);
}
