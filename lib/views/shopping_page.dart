import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_with_getx/controllers/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (productsController) {
                  return ListView.builder(
                    itemCount: productsController.products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${productsController.products[index].productName}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$${productsController.products[index].price}',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // cartController.addToCart(
                                  //   productsController.products[index],
                                  // );
                                },
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all(Colors.blue),
                                ),
                                child: Text('Add to Cart'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Text('Total amount'),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
