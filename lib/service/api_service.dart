import 'dart:convert';
import 'package:dio/dio.dart';
import '../model/home.dart';


class ApiService {
  final Dio dio = Dio(); // Khởi tạo Dio

  static const String apiUrl = "https://67f7456542d6c71cca6488af.mockapi.io/api/allplace/places";

  Future<List<Location>> fetchLocations() async {
    try {
      final response = await dio.get(apiUrl);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((json) => Location.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
