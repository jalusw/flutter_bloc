import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/core/constants/Strings.dart';

class ProductApiService {
  final Dio _dio = Dio();

  Future fetchDataProducts() async {
    try {
      final response = await _dio.get('$apiUrl/products');
      return response.data;
    } catch (error) {}
  }
}
