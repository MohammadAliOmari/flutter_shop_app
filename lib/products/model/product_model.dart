class ProductModel {
  final String id;
  final String name;
  final String description;
  final String category;
  final String brand;
  final bool inStock;
  final double price;
  final String imageUrl;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.brand,
    required this.inStock,
    required this.price,
    required this.imageUrl,
  });
}
