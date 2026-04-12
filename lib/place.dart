import 'package:flutter/material.dart';

class Place {
  final String name;
  final String image;
  final String category;
  final String description;
  final double rating;

  Place({
    required this.name,
    required this.image,
    required this.category,
    required this.description,
    required this.rating,
  });
}

final List<Place> places = [
  Place(
    name: 'Ala-Too Square',
    image: 'assets/ala_too_square.jpg',
    category: 'Landmark',
    description: 'The heart of Bishkek',
    rating: 4.8,
  ),
  Place(
    name: 'Osh Bazaar',
    image: 'assets/osh_bazaar.jpg',
    category: 'Market',
    description: 'Famous local bazaar',
    rating: 4.6,
  ),
];
