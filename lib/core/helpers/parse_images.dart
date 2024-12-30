import 'package:flutter/material.dart';

List<String>? parseImages(List<dynamic>? images) {
  if (images == null || images.isEmpty) return null;

  try {
    // Case 1: If the first element is a string containing improperly formatted JSON
    if (images[0] is String &&
        images[0].contains("https") &&
        images[0].contains("jpeg")) {
      // Extract valid URLs using a RegExp
      final regex = RegExp(r'https:\/\/.*?\.jpeg');
      final matches = regex.allMatches(images[0]);
      return matches.map((match) => match.group(0)!).toList();
    }

    // Case 2: If the first element is a string containing improperly formatted JSON
    if (images[0] is String &&
        images[0].contains("https") &&
        images[0].contains("jpg")) {
      // Extract valid URLs using a RegExp
      final regex = RegExp(r'https:\/\/.*?\.jpg');
      final matches = regex.allMatches(images[0]);
      return matches.map((match) => match.group(0)!).toList();
    }

    // Case 3: If the first element is a string containing improperly formatted JSON
    if (images[0] is String &&
        images[0].contains("https") &&
        images[0].contains("/any")) {
      final matches = [
        'https://rakanonline.com/wp-content/uploads/2022/08/default-product-image.png'
      ];
      return matches;
    }

    // Case 4: If the first element is a string containing improperly formatted JSON
    if (images[0] is String && images[0].contains("https://example")) {
      final matches = [
        'https://rakanonline.com/wp-content/uploads/2022/08/default-product-image.png'
      ];
      return matches;
    }

    // Case 5: If the input is already a list of valid URLs
    return List<String>.from(images);
  } catch (e) {
    debugPrint("Error parsing images: $e");
    return null;
  }
}
