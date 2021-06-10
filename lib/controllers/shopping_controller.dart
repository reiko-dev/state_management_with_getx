import 'package:get/get.dart';
import 'package:state_management_with_getx/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();

    fetchProducts();
  }

  Future<void> fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));

    var productsResponse = [
      Product(
        id: 1,
        productName: 'Name AAA',
        productDescription: 'Psd asd productDescription',
        productImg: 'sss sa ',
        price: 30,
      ),
      Product(
        id: 2,
        productName: 'Name BBBB',
        productDescription: 'Psd asd productDescription',
        productImg: 'sss sa ',
        price: 40,
      ),
      Product(
        id: 3,
        productName: 'Name CCCC',
        productDescription: 'Psd asd productDescription',
        productImg: 'sss sa ',
        price: 49.5,
      ),
    ];

    products.value = productsResponse;
  }
}
