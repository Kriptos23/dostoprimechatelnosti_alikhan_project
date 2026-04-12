import 'package:dostoprimechatelnosti_alikhan_project/place.dart';
import 'package:flutter/material.dart';

import 'place_details.dart';

class PlaceCard extends StatelessWidget {
  final Place place;

  const PlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            place.image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(place.name),
        subtitle: Text(place.description),
        // trailing: Text('${place.rating}⭐'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PlaceDetailsPage(place: place),
            ),
          );
        },
      ),
    );
  }
}