import 'package:flutter_bloc/api_services/product_api_service.dart';
import 'package:flutter_bloc/models/product_model.dart';

class ProductRepository {
  final _productApiService = ProductApiService();
  Future getListProducts() async {
    try {
      final data = await _productApiService.fetchDataProducts();
      final List products = data['products'] as List;
      return products
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList();
    } catch (error) {}
  }
}
