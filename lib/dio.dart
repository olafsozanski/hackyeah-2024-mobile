import 'package:dio/dio.dart';
import 'package:hackyeah_2024_mobile/data/companies.dart';

var baseUrl = "http://10.250.166.120:3000/";

var dio = Dio(BaseOptions(
  baseUrl: baseUrl,
));

Future<Company> getPlace({required String nip}) async {
  Response companyData = await dio.get('/places/$nip');
  return Company.fromJson(companyData.data);
}
