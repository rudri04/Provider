import 'package:flutter/material.dart';

import '../Data/dummy_data.dart';

class CartProvider extends ChangeNotifier {
  final List<product> items =[];

  List<product> get item => items;

  //TO ADD LIST OF PRODUCT FROM SHOPPING PAGE TO SELECTED LIST PAGE
  void add(product item){
    items.add(item);
    notifyListeners();
  }

  //TO REMOVE LIST OF PRODUCT FROM SHOPPING PAGE TO SELECTED LIST PAGE
  void remove(product item){
    items.remove(item);
    notifyListeners();
  }

  //TO CLEAR THE LIST OF ITEMS
  void removeAll() {
    items.clear();
    notifyListeners();
  }

  //TO ADD THE TOTAL PRICE OF A PRODUCT LIST
  double totalItems(){
    return items.fold(0, (previousValue,item)=>previousValue + item.price);
  }

}