import 'package:dio/dio.dart';

var baseUrl = "http://57.128.201.37:3000/";

var dio = Dio(BaseOptions(
  baseUrl: baseUrl,
));

Future<Map<String, dynamic>> getCompany({required String nip}) async {
  Response companyData = await dio.post('/companies/by-nip/$nip/analyze');
  return companyData.data;
}
