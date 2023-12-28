import 'package:flutter/material.dart';
import 'package:flutter_bloc/blocs/product_bloc.dart';
import 'package:flutter_bloc/models/product_model.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final _productBloc = ProductBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StreamBuilder<List<ProductModel>>(
              stream: _productBloc.productsStream,
              initialData: [],
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Column(
                  children: snapshot.data!
                      .map((product) => Text(product.title ?? ""))
                      .toList(),
                );
              })
        ],
      ),
    );
  }
}
