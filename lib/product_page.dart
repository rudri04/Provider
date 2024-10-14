import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_shoppinglist/Data/dummy_data.dart';
import 'package:provider_shoppinglist/provider/const_provider.dart';
class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Products'),
      ),
      body:Consumer<CartProvider>(builder: (context,provider,_){
        return  Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .8,
              child: ListView.builder(
                itemCount: provider.item.length,
                  itemBuilder: (context,index){
                    product pro = provider.item[index];
                  return ListTile(
                    title: Text(pro.name),
                    onLongPress: (){
                      provider.remove(pro);
                    },
                  );
              }),
            ),
            Text('Total Cost Rs. ${provider.totalItems()}')
          ],
        );
      })
    );
  }
}
