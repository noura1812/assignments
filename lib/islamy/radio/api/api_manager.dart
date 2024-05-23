import 'package:dio/dio.dart';
import 'package:assignments/islamy/radio/api/api_endpoints.dart';
import 'package:assignments/islamy/radio/models/radio_model.dart';

class ApiManager {
  static const String _baseUrl = "https://mp3quran.net/";
  final Dio dio = Dio(
    BaseOptions(baseUrl: _baseUrl),
  );

  Future<GetsRadiosRequestBody> getRadios({String language = "ar"}) async {
    var response = await dio.get(
      ApiEndPoints.radios,
      queryParameters: {"language": language},
    );
    return GetsRadiosRequestBody.fromJson(response.data);
  }
}
