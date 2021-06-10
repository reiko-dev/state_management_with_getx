import 'package:get/get.dart';

class Product {
  final int id;
  final String productName;
  final String productImg;
  final String productDescription;
  final double price;

  Product({
    required this.id,
    required this.productName,
    required this.productDescription,
    required this.productImg,
    required this.price,
  });

  final isFavorite = false.obs;
}
