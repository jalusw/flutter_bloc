import 'dart:developer';

import 'package:flutter_bloc/models/product_model.dart';
import 'package:flutter_bloc/repositories/product_repository.dart';
import 'package:rxdart/rxdart.dart';

class ProductBloc {
  final _productRepository = ProductRepository();
  final _productsController = BehaviorSubject<List<ProductModel>>();

  Stream<List<ProductModel>> get productsStream => _productsController.stream;

  ProductBloc() {
    getProductList();
  }

  Future getProductList() async {
    try {
      final products = await _productRepository.getListProducts();
      debugger();
      _productsController.sink.add(products);
    } catch (error) {}
  }
}
