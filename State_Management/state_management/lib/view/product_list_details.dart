import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controllers/product_controller.dart';
import 'package:state_management/controllers/wishlist_controller.dart';
import 'package:state_management/view/wishlist_screen.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const WishListScreen();
                }));
              },
              icon: const Icon(
                Icons.favorite_border_rounded,
                color: Colors.red,
              ))
        ],
        title: const Text('Product List Screen'),
      ),
      body: ListView.builder(
          itemCount: providerObj.listofProducts.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(children: [
                Image.network(
                    "${providerObj.listofProducts[index].productImage}"),
                const SizedBox(
                  height: 10,
                ),
                Text("${providerObj.listofProducts[index].productName}"),
                const SizedBox(
                  height: 10,
                ),
                Text("${providerObj.listofProducts[index].price}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///IS FAVOURITE
                    Consumer<ProductController>(
                        builder: (context, provider, child) {
                      log("IN fav cosumer");
                      return GestureDetector(
                        onTap: () {
                          /// Add product to wislist
                          providerObj.addToFavourite(index: index);
                          if (providerObj.listofProducts[index].isFavorite) {
                            Provider.of<WishListController>(context,
                                    listen: false)
                                .addDataToWishList(
                                    obj: providerObj.listofProducts[index]);
                          }
                        },
                        child: Icon(
                          (providerObj.listofProducts[index].isFavorite)
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_rounded,
                        ),
                      );
                    }),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            providerObj.addQuantity(index);
                          },
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(
                          width: 5,
                        ),

                        ///QUANTITY
                        Consumer<ProductController>(
                            builder: (context, value, child) {
                          log("In quantity");
                          return Text(
                              "${providerObj.listofProducts[index].quantity}");
                        }),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            providerObj.removeQuantity(index);
                          },
                          child: const Icon(Icons.remove),
                        )
                      ],
                    )
                  ],
                )
              ]),
            );
          }),
    );
  }
}
