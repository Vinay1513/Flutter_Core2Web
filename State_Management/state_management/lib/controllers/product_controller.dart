import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'package:state_management/models/product_model.dart';

class ProductController with ChangeNotifier {
  List<ProductModel> listofProducts = [];

  void addProductData({required ProductModel pObj}) {
    listofProducts.add(pObj);
  }

  void addToFavourite({required int index}) {
    listofProducts[index].isFavorite = !listofProducts[index].isFavorite;
    notifyListeners();
  }

  void addQuantity(int index) {
    listofProducts[index].quantity = listofProducts[index].quantity + 1;
    notifyListeners();
  }

  void removeQuantity(int index) {
    listofProducts[index].quantity = listofProducts[index].quantity - 1;
    notifyListeners();
  }
}
