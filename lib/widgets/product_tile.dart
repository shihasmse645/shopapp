import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/models/product_models.dart';

class ProductTile extends StatelessWidget {
  final ProductsModel product;
  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: product.image!,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product.title!,
              maxLines: 1,
              overflow: TextOverflow.clip,
              style: const TextStyle(
                fontFamily: 'avenir',
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 4),
            if (product.rating != null)
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.rating!.rate.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 4),
            Text(product.category.toString()),
            Text(
              '\$${product.price}',
              style: const TextStyle(fontSize: 24, fontFamily: 'avenir'),
            ),
          ],
        ),
      ),
    );
  }
}
