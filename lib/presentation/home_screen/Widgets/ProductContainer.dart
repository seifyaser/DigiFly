import 'package:digify/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget Productcontainer({
  required String name,
  required String category,
  required double price,
  required String imagePath,
  required String discount,
}) {
  return Container(
    width: 272,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(5, 3),
        ),
      ],
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  height: 220,
                  width: double.infinity,
                ),
              ),
            ),
            // Discount container - now uses PositionedDirectional
            PositionedDirectional(
              top: 15,
              start: 0, // Will be 'left' in LTR, 'right' in RTL
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFDC3545),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  discount,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            // Favorite icon - now uses PositionedDirectional
            PositionedDirectional(
              top: 15,
              end: -2, // Will be 'right' in LTR, 'left' in RTL
              child: const Icon(
                Icons.favorite_border,
                color: Color(0xFF28A745),
                size: 30,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start is good for text that aligns to the start of the writing direction
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Apptheme.TextBoldtertiary,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    category,
                    style: Apptheme.heading2,
                  ),
                  Text(
                    '${price.toStringAsFixed(2)} L.E',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF46BC8A),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}