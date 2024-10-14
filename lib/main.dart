import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider_shoppinglist/add_cart.dart';
import 'package:provider_shoppinglist/provider/const_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>CartProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
        home: AddCart(),
    );
  }
}

