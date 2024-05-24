import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:state_management/models/product_model.dart';

class WishListController with ChangeNotifier {
  List<ProductModel> listofWishlistProducts = [];

  void addDataToWishList({ProductModel? obj}) {
    listofWishlistProducts.add(obj!);
    log("Product Added ro wishlist");
  }
}
