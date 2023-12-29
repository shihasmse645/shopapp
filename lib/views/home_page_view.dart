import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/controller/product_controller.dart';
import 'package:shopapp/widgets/product_tile.dart';

class HomePageView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 5,
        title: const Text(
          "ShopMe",
          style: TextStyle(
              fontFamily: "avenir", fontSize: 20, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () {
                  if (productController.isLoading.value) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                      ),
                      itemCount: productController.productList.length,
                      itemBuilder: (context, index) {
                        return ProductTile(
                            productController.productList[index]);
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
