import 'package:flutter/material.dart';
import 'package:flutter_bloc/views/product_screen.dart';
import 'package:flutter_bloc/views/products_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Bloc',
      home: ProductsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
