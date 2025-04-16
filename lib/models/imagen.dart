import 'package:flutter/material.dart';

Widget imageItem(int index, List<int> arr) {
  return Container(
    margin: const EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF88EEFF), Color(0xFF0099BB)],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.2),
          blurRadius: 16.0,
          offset: Offset(4, 4),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Image.network(
        'https://picsum.photos/500/300?random=${arr[index]}',
        fit: BoxFit.cover,
      ),
    ),
  );
}