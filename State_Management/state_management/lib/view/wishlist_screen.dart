//import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:state_management/controllers/product_controller.dart';
import 'package:state_management/controllers/wishlist_controller.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<WishListController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.favorite_border_rounded,
                color: Colors.red,
              ))
        ],
        title: const Text('Wish List Screen'),
      ),
      body: ListView.builder(
          itemCount: providerObj.listofWishlistProducts.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(children: [
                Image.network(
                    "${providerObj.listofWishlistProducts[index].productImage}"),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    "${providerObj.listofWishlistProducts[index].productName}"),
                const SizedBox(
                  height: 10,
                ),
                Text("${providerObj.listofWishlistProducts[index].price}"),
              ]),
            );
          }),
    );
  }
}
