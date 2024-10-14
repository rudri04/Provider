import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_shoppinglist/Data/dummy_data.dart';
import 'package:provider_shoppinglist/product_page.dart';
import 'package:provider_shoppinglist/provider/const_provider.dart';
import 'package:provider/provider.dart';
class AddCart extends StatelessWidget {
  const AddCart({super.key});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        actions: [
          IconButton(onPressed: (){
            Get.to(()=>const ProductPage());
          }, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.builder(
        itemCount: productlist.length,
          itemBuilder: (context,index){
          product item = productlist[index];
            return ListTile(
              leading: Container(
                height: 25,
                width: 25,
                color: item.color,
              ),
              title: Text(item.name),
              trailing: Checkbox(
                value: cartProvider.item.contains(item),
                onChanged: (value) {
                  if(value == true){
                    cartProvider.add(item);
                  }
                  else {
                    cartProvider.remove(item);
                  }
                },
              ),
            );
      }),
    );
  }
}
