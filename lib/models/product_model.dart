class ProductModel {
  final int? id;
  final String? title;
  final String? description;

  const ProductModel({this.id, this.title, this.description});

  factory ProductModel.fromJson(dynamic json) => ProductModel(
      id: json['id'], title: json['title'], description: json['description']);
}
