import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lamerei_app/core/helpers/parse_images.dart';
import 'package:lamerei_app/core/widgets/loaading_animation.dart';
import 'package:lamerei_app/features/home/data/models/product.dart';

class ProductItemImage extends StatelessWidget {
  const ProductItemImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: AspectRatio(
        aspectRatio: 1 / 1.2,
        child: CachedNetworkImage(
          placeholder: (context, url) => Container(
            color: Colors.grey[200],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoadingAnimation(),
                  const SizedBox(height: 10),
                  Text(
                    "Loading...",
                    style: TextStyle(
                      color: Color(0xB2425486),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          imageUrl: parseImages(product.images)?[0] ?? "",
          fit: BoxFit.cover,
          errorWidget: (context, url, error) => Container(
            color: Colors.grey[200],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 24,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "No Image\nAvailable 😢",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xB2425486),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
