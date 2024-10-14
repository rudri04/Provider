import 'package:flutter/material.dart';

class product{
  final int id;
  final String name;
  final double price;
  final Color color;

  product({
    required this.id,
    required this.name,
    required this.price,
    required this.color});
}

final List<product> productlist = [
  product(id: 0, name: 'Laptop', price: 30000, color: Colors.brown),
  product(id: 1, name: 'SmartPhone', price: 15000, color: Colors.blue),
  product(id: 2, name: 'Wireless Earbuds', price: 2000, color: Colors.blueGrey),
  product(id: 3, name: 'Smart Watch', price: 5000, color: Colors.teal),
  product(id: 4, name: 'Games', price: 1000, color: Colors.pink),
  product(id: 5, name: '4K TV', price: 40000, color: Colors.purple),
  product(id: 6, name: 'PC', price: 40000, color: Colors.amberAccent),
  product(id: 7, name: 'Speaker', price: 6000, color: Colors.green),
  product(id: 8, name: 'Camera', price: 7000, color: Colors.deepOrange),
];