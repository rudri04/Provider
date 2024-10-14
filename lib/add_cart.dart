import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_shoppinglist/product_page.dart';
class AddCart extends StatelessWidget {
  const AddCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        actions: [
          IconButton(onPressed: (){
            Get.to(()=>const ProductPage());
          }, icon: const Icon(Icons.shopping_cart))
        ],
      ),
    );
  }
}
