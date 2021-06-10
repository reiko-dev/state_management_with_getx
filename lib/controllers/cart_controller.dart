import 'package:get/get.dart';
import 'package:state_management_with_getx/models/product.dart';

class CartController extends GetxController {
  static CartController get i => Get.find();

  var cartItems = <Product>[].obs;

  //This works even without using .obs because the method uses
  //the value of a .obs to provide their return value.
  int get count => cartItems.length;

  //The same as the before
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  //This way you can mix normal and .obs properties.
  void addToCart(Product p) {
    cartItems.add(p);
    testAmount = totalPrice;
    update();
  }

  double testAmount = 0;
}
